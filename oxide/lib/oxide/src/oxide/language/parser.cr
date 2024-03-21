require "log"
require "./lexer"

module Oxide
  module Language
    class Parser
      delegate token, to: @lexer
      delegate next_token, to: @lexer

      def self.parse(input : String)
        parser = self.new(input)
        parser.parse
      end

      def initialize(input : String)
        @lexer = Lexer.new(input)

        next_token
      end

      macro with_location(method_def)
        def {{method_def.name}}(
          {% for arg in method_def.args %}
            {{ arg.name }}{% if arg.restriction %} : {{ arg.restriction }}{% end %},
          {% end %}
        )
          begin_line = token.line_number
          begin_column = token.column_number

          {{method_def.body}}.tap do |node|
            node.begin_line = begin_line
            node.begin_column = begin_column
          end
        end
      end

      with_location def parse : Nodes::Document
        definitions = [] of Nodes::Definition

        loop do
          definitions << parse_definition

          break if token.kind.eof?
        end

        Nodes::Document.new(definitions: definitions)
      end

      with_location def parse_definition : Nodes::Definition
        if token.kind.l_brace?
          return parse_operation_definition
        end

        description = parse_description

        case token.raw_value
        when "query", "mutation", "subscription"
          parse_operation_definition
        when "fragment"
          parse_fragment_definition
        when "scalar"
          parse_scalar_definition(description)
        when "type"
          parse_object_type_definition(description)
        when "interface"
          parse_interface_type_definition(description)
        when "union"
          parse_union_type_definition(description)
        when "enum"
          parse_enum_type_definition(description)
        when "input"
          parse_input_object_type_definition(description)
        when "schema"
          parse_schema_definition(description)
        when "directive"
          parse_directive_definition(description)
        else
          raise "Expected (query, mutation, subscription, fragment), found #{token.raw_value}"
        end
      end

      with_location def parse_input_object_type_definition(description : String?) : Nodes::InputObjectTypeDefinition
        expect_keyword_and_consume("input")
        name = parse_name
        directives = parse_directives(true)
        fields = parse_input_fields_definition

        Nodes::InputObjectTypeDefinition.new(
          name: name,
          description: description,
          fields: fields,
          directives: directives
        )
      end

      def parse_input_fields_definition : Array(Nodes::InputValueDefinition)
        unless token.kind.l_brace?
          return [] of Nodes::InputValueDefinition
        end

        fields = [] of Nodes::InputValueDefinition

        consume_token(Token::Kind::LBrace)
        loop do
          fields << parse_input_value_definition

          break if token.kind.r_brace?
        end
        consume_token(Token::Kind::RBrace)

        fields
      end

      with_location def parse_enum_type_definition(description : String?) : Nodes::EnumTypeDefinition
        expect_keyword_and_consume("enum")
        name = parse_name
        directives = parse_directives(true)
        values = parse_enum_values_definition

        Nodes::EnumTypeDefinition.new(
          name: name,
          description: description,
          directives: directives,
          value_definitions: values
        )
      end

      def parse_enum_values_definition : Array(Nodes::EnumValueDefinition)
        unless token.kind.l_brace?
          return [] of Nodes::EnumValueDefinition
        end

        values = [] of Nodes::EnumValueDefinition

        consume_token(Token::Kind::LBrace)
        loop do
          values << parse_enum_value_definition

          break if token.kind.r_brace?
        end
        consume_token(Token::Kind::RBrace)

        values
      end

      with_location def parse_enum_value_definition : Nodes::EnumValueDefinition
        description = parse_description
        name = parse_enum_value_name
        directives = parse_directives(true)

        Nodes::EnumValueDefinition.new(
          name: name,
          directives: directives
        )
      end

      def parse_enum_value_name : String
        case token.raw_value
        when "true", "false", "null"
          raise "#{token.raw_value} is reserved and cannot be used for an enum value."
        else
          parse_name
        end
      end

      with_location def parse_union_type_definition(description : String?) : Nodes::UnionTypeDefinition
        expect_keyword_and_consume("union")
        name = parse_name
        directives = parse_directives(true)
        types = parse_union_member_types

        Nodes::UnionTypeDefinition.new(
          name: name,
          description: description,
          member_types: types,
          directives: directives
        )
      end

      def parse_union_member_types : Array(Nodes::NamedType)
        unless token.kind.equals?
          return [] of Nodes::NamedType
        end

        consume_token(Token::Kind::Equals)

        if token.kind.pipe?
          consume_token(Token::Kind::Pipe)
        end

        types = [] of Nodes::NamedType

        loop do
          types << parse_named_type

          if token.kind.pipe?
            consume_token(Token::Kind::Pipe)
          else
            break
          end
        end

        types
      end

      with_location def parse_interface_type_definition(description : String?) : Nodes::InterfaceTypeDefinition
        expect_keyword_and_consume("interface")
        name = parse_name
        interfaces = parse_implements_interfaces
        directives = parse_directives(true)
        fields = parse_fields_definition

        Nodes::InterfaceTypeDefinition.new(
          name: name,
          description: description,
          implements_interfaces: interfaces,
          field_definitions: fields,
          directives: directives
        )
      end

      with_location def parse_object_type_definition(description : String?) : Nodes::ObjectTypeDefinition
        expect_keyword_and_consume("type")
        name = parse_name
        interfaces = parse_implements_interfaces
        directives = parse_directives(true)
        fields = parse_fields_definition

        Nodes::ObjectTypeDefinition.new(
          name: name,
          description: description,
          implements: interfaces,
          directives: directives,
          field_definitions: fields
        )
      end

      def parse_implements_interfaces : Array(Nodes::NamedType)
        unless token.raw_value == "implements"
          return [] of Nodes::NamedType
        end

        next_token

        if token.kind.amp?
          consume_token(Token::Kind::Amp)
        end

        interfaces = [] of Nodes::NamedType

        loop do
          interfaces << parse_named_type

          if token.kind.amp?
            consume_token(Token::Kind::Amp)
          else
            break
          end
        end

        interfaces
      end

      def parse_fields_definition : Array(Nodes::FieldDefinition)
        unless token.kind.l_brace?
          return [] of Nodes::FieldDefinition
        end

        definitions = [] of Nodes::FieldDefinition
        consume_token(Token::Kind::LBrace)
        loop do
          definitions << parse_field_definition

          break if token.kind.r_brace?
        end
        consume_token(Token::Kind::RBrace)
        definitions
      end

      with_location def parse_field_definition : Nodes::FieldDefinition
        description = parse_description
        name = parse_name
        args = parse_arguments_definitions
        consume_token(Token::Kind::Colon)
        type = parse_type_reference
        directives = parse_directives(true)

        Nodes::FieldDefinition.new(
          name: name,
          description: description,
          argument_definitions: args,
          type: type,
          directives: directives
        )
      end

      with_location def parse_scalar_definition(description : String?) : Nodes::ScalarTypeDefinition
        expect_keyword_and_consume("scalar")
        name = parse_name
        directives = parse_directives(true)

        Nodes::ScalarTypeDefinition.new(
          name: name,
          description: description,
          directives: directives
        )
      end

      with_location def parse_schema_definition(description : String?) : Nodes::SchemaDefinition
        expect_keyword_and_consume("schema")
        directives = parse_directives(true)

        operation_type_definitions = [] of Nodes::OperationTypeDefinition

        if token.kind.l_brace?
          consume_token(Token::Kind::LBrace)
          loop do
            operation_type_definitions << parse_operation_type_definition

            break if token.kind.r_brace?
          end
          consume_token(Token::Kind::RBrace)
        end

        Nodes::SchemaDefinition.new(
          description: description,
          operation_type_definitions: operation_type_definitions,
          directives: directives
        )
      end

      with_location def parse_operation_type_definition : Nodes::OperationTypeDefinition
        operation_type = parse_operation_definition_type
        consume_token(Token::Kind::Colon)
        named_type = parse_named_type

        Nodes::OperationTypeDefinition.new(
          operation_type: operation_type,
          named_type: named_type
        )
      end

      with_location def parse_directive_definition(description : String?) : Nodes::DirectiveDefinition
        expect_keyword_and_consume("directive")
        consume_token(Token::Kind::At)
        name = parse_name
        args = parse_arguments_definitions

        repeatable = if token.kind.name? && token.raw_value == "repeatable"
          consume_token(Token::Kind::Name)
          true
        else
          false
        end

        expect_keyword_and_consume("on")
        locations = parse_directive_locations

        Nodes::DirectiveDefinition.new(
          name: name,
          description: description,
          repeatable: repeatable,
          arguments_definitions: args,
          directive_locations: locations
        )
      end

      def parse_arguments_definitions : Array(Nodes::InputValueDefinition)
        unless token.kind.l_paren?
          return [] of Nodes::InputValueDefinition
        end

        definitions = [] of Nodes::InputValueDefinition
        consume_token(Token::Kind::LParen)
        loop do
          definitions << parse_input_value_definition
          break if token.kind.r_paren?
        end
        consume_token(Token::Kind::RParen)

        definitions
      end

      with_location def parse_input_value_definition : Nodes::InputValueDefinition
        description = parse_description
        name = parse_name
        consume_token(Token::Kind::Colon)
        type = parse_type_reference

        default_value = if token.kind.equals?
          consume_token(Token::Kind::Equals)
          parse_value_literal(true)
        end

        directives = parse_directives(true)

        Nodes::InputValueDefinition.new(
          name: name,
          type: type,
          default_value: default_value,
          directives: directives
        )
      end

      def parse_directive_locations : Array(Nodes::DirectiveLocation)
        if token.kind.pipe?
          consume_token(Token::Kind::Pipe)
        end

        locations = [] of Nodes::DirectiveLocation

        loop do
          locations << parse_directive_location

          if token.kind.pipe?
            consume_token(Token::Kind::Pipe)
          else
            break
          end
        end

        locations
      end

      def parse_directive_location : Nodes::DirectiveLocation
        name = parse_name
        Directive::Location.parse(name)
        name.as(Nodes::DirectiveLocation)
      rescue e : ArgumentError
        raise "Invalid directive location \"#{name}\""
      end

      def parse_description : String?
        if token.kind.string?
          token.raw_value.tap do
            consume_token(Token::Kind::String)
          end
        end
      end

      with_location def parse_operation_definition : Nodes::OperationDefinition
        if token.kind.l_brace?
          return Nodes::OperationDefinition.new(
            operation_type: "query",
            name: nil,
            selection_set: parse_selection_set
          )
        end

        operation = parse_operation_definition_type

        name = nil
        if token.kind.name?
          name = parse_name
        end

        Nodes::OperationDefinition.new(
          operation_type: operation,
          name: name,
          variable_definitions: parse_variable_definitions,
          directives: parse_directives(false),
          selection_set: parse_selection_set
        )
      end

      def parse_operation_definition_type
        operation = token.raw_value
        consume_token(Token::Kind::Name)

        case operation
        when "query", "mutation", "subscription"
          operation
        else
          raise "Expected (query, mutation, subscription), found #{operation}"
        end
      end

      with_location def parse_fragment_definition : Nodes::FragmentDefinition
        expect_current_token(Token::Kind::Name)
        expect_keyword_and_consume("fragment")

        name = parse_fragment_name

        expect_keyword_and_consume("on")

        Nodes::FragmentDefinition.new(
          name: name,
          type_condition: parse_named_type,
          directives: parse_directives(false),
          selection_set: parse_selection_set
        )
      end

      def parse_fragment_name
        if token.raw_value == "on"
          raise_unexpected
        end

        parse_name
      end

      def parse_variable_definitions : Array(Nodes::VariableDefinition)
        definitions = [] of Nodes::VariableDefinition

        unless token.kind.l_paren?
          return definitions
        end

        consume_token(Token::Kind::LParen)

        loop do
          definitions << parse_variable_definition

          break if token.kind.r_paren?
        end

        consume_token(Token::Kind::RParen)

        definitions
      end

      with_location def parse_variable_definition : Nodes::VariableDefinition
        variable = parse_variable
        consume_token(Token::Kind::Colon)
        type = parse_type_reference

        default_value = if token.kind.equals?
          consume_token(Token::Kind::Equals)
          parse_value_literal(true)
        end

        Nodes::VariableDefinition.new(
          variable: variable,
          type: type,
          default_value: default_value
        )
      end

      with_location def parse_type_reference : Nodes::Type
        type = if token.kind.l_bracket?
          consume_token(Token::Kind::LBracket)
          inner_type = parse_type_reference
          consume_token(Token::Kind::RBracket)

          Nodes::ListType.new(
            of_type: inner_type
          )
        else
          parse_named_type
        end

        if token.kind.bang?
          consume_token(Token::Kind::Bang)

          return Nodes::NonNullType.new(
            of_type: type
          )
        end

        type
      end

      with_location def parse_variable : Nodes::Variable
        consume_token(Token::Kind::Dollar)

        Nodes::Variable.new(
          name: parse_name,
        )
      end

      def parse_name
        expect_current_token(Token::Kind::Name)

        token.raw_value.tap do
          next_token
        end
      end

      with_location def parse_selection_set : Nodes::SelectionSet
        selections = [] of Nodes::Selection

        consume_token(Token::Kind::LBrace)
        loop do
          selections << parse_selection
          break if token.kind.r_brace?
        end
        consume_token(Token::Kind::RBrace)

        Nodes::SelectionSet.new(
          selections: selections
        )
      end

      with_location def parse_selection : Nodes::Selection
        if token.kind.spread?
          parse_fragment
        else
          parse_field
        end
      end

      with_location def parse_fragment : Nodes::FragmentSpread | Nodes::InlineFragment
        consume_token(Token::Kind::Spread)

        has_type_condition = if token.kind.name? && token.raw_value == "on"
          next_token
          true
        else
          false
        end

        if !has_type_condition && token.kind.name?
          name = token.raw_value
          next_token

          Nodes::FragmentSpread.new(
            name: name,
            directives: parse_directives(false)
          )
        else
          type_condition = if has_type_condition
            parse_named_type
          end

          Nodes::InlineFragment.new(
            type_condition: type_condition,
            directives: parse_directives(false),
            selection_set: parse_selection_set
          )
        end
      end

      with_location def parse_named_type : Nodes::NamedType
        Nodes::NamedType.new(
          name: parse_name,
        )
      end

      with_location def parse_field : Nodes::Field
        expect_current_token(Token::Kind::Name)
        name_or_alias = token.raw_value
        next_token

        alias_name = nil
        name = nil

        if token.kind.colon?
          alias_name = name_or_alias
          next_token
          expect_current_token(Token::Kind::Name)
          name = token.raw_value
          next_token
        else
          name = name_or_alias
        end

        Nodes::Field.new(
          name: name,
          alias: alias_name,
          arguments: parse_arguments(false),
          directives: parse_directives(false),
          selection_set: if token.kind.l_brace?
            parse_selection_set
          end
        )
      end

      def parse_directives(is_const) : Array(Nodes::Directive)
        directives = [] of Nodes::Directive

        while token.kind.at?
          directives << parse_directive(is_const)
        end

        directives
      end

      with_location def parse_directive(is_const) : Nodes::Directive
        consume_token(Token::Kind::At)

        Nodes::Directive.new(
          name: parse_name,
          arguments: parse_arguments(is_const)
        )
      end

      def parse_arguments(is_const) : Array(Nodes::Argument)
        unless token.kind.l_paren?
          return [] of Nodes::Argument
        end

        consume_token(Token::Kind::LParen)

        arguments = [] of Nodes::Argument

        loop do
          arguments << parse_argument(is_const)

          break if token.kind.r_paren?
        end

        consume_token(Token::Kind::RParen)

        arguments
      end

      with_location def parse_argument(is_const) : Nodes::Argument
        name = parse_name
        consume_token(Token::Kind::Colon)

        Nodes::Argument.new(
          name: name,
          value: parse_value_literal(is_const)
        )
      end

      with_location def parse_value_literal(is_const) : Nodes::Value
        case token.kind
        when .l_bracket?
          parse_list(is_const)
        when .l_brace?
          parse_object(is_const)
        when .int?
          Nodes::IntValue.new(token.int_value).tap { next_token }
        when .float?
          Nodes::FloatValue.new(token.float_value).tap { next_token }
        when .string?
          Nodes::StringValue.new(token.raw_value).tap { next_token }
        when .name?
          # Could actually be a boolean value or null
          case token.raw_value
          when "true"
            Nodes::BooleanValue.new(true).tap { next_token }
          when "false"
            Nodes::BooleanValue.new(false).tap { next_token }
          when "null"
            Nodes::NullValue.new.tap { next_token }
          else
            Nodes::EnumValue.new(token.raw_value).tap { next_token }
          end
        when .dollar?
          if is_const
            next_token
            if token.kind.name?
              variable_name = token.raw_value
              raise "Unexpected variable \"$#{variable_name}\" in constant value."
            else
              raise_unexpected
            end
          end

          parse_variable
        else
          raise_unexpected
        end
      end

      with_location def parse_list(is_const) : Nodes::ListValue
        values = [] of Nodes::Value

        consume_token(Token::Kind::LBracket)
        loop do
          values << parse_value_literal(is_const)
          next_token

          break if token.kind.r_bracket?
        end
        consume_token(Token::Kind::RBracket)

        Nodes::ListValue.new(values: values)
      end

      with_location def parse_object(is_const) : Nodes::ObjectValue
        fields = [] of Nodes::ObjectField

        consume_token(Token::Kind::LBrace)
        loop do
          fields << parse_object_field(is_const)
          break if token.kind.r_brace?
        end
        consume_token(Token::Kind::RBrace)

        Nodes::ObjectValue.new(fields)
      end

      with_location def parse_object_field(is_const) : Nodes::ObjectField
        name = parse_name
        consume_token(Token::Kind::Colon)

        Nodes::ObjectField.new(
          name: name,
          value: parse_value_literal(is_const)
        )
      end

      def consume_token(kind : Token::Kind)
        expect_current_token(kind)
        next_token
      end


      def expect_current_token(kind : Token::Kind)
        unless token.kind == kind
          raise "Expected #{kind}, found #{token.kind}."
        end
      end

      def expect_keyword_and_consume(value : String)
        unless token.raw_value == value
          raise "Expected #{value}, found #{token.raw_value}."
        end

        next_token
      end

      def raise_unexpected
        raise "Unexpected #{token.kind}"
      end

      private def raise(message)
        ::raise ParseException.new("Syntax Error: #{message}", token.line_number, token.column_number)
      end
    end
  end
end