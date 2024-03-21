module Oxide
  module Utils
    class Builder
      property input : String
      property type_map : Hash(String, Oxide::Type)
      property interface_map : Hash(String, Oxide::Types::InterfaceType)
      property type_resolvers : Hash(String, TypeResolver)

      def initialize(@input : String, @type_resolvers : Hash(String, TypeResolver))
        @type_map = {} of String => Oxide::Type
        @interface_map = {} of String => Oxide::Types::InterfaceType
      end

      def build
        document = parse

        # SchemaDefinition
        unless schema_definition = document.definitions.select(type: Oxide::Language::Nodes::SchemaDefinition).first
          raise "no schema definition provided"
        end

        unless query_definition = schema_definition.operation_type_definitions.find { |operation_defintion| operation_defintion.operation_type == "query"  }
          raise "query root must be provded"
        end

        # EnumTypeDefinition
        enum_definitions = document.definitions.select(type: Oxide::Language::Nodes::EnumTypeDefinition)
        enums = build_enums(enum_definitions)
        enums.each do |enum_type|
          type_map[enum_type.name] = enum_type
        end

        # ScalarTypeDefinition
        scalar_definitions = document.definitions.select(type: Oxide::Language::Nodes::ScalarTypeDefinition)
        scalars = build_scalars(scalar_definitions)
        scalars.each do |scalar|
          type_map[scalar.name] = scalar
        end

        # InterfaceTypeDefinition
        interface_definitions = document.definitions.select(type: Oxide::Language::Nodes::InterfaceTypeDefinition)
        interfaces = build_interfaces(interface_definitions)
        interfaces.each do |interface|
          type_map[interface.name] = interface
          interface_map[interface.name] = interface
        end

        # ObjectTypeDefinition
        object_definitions = document.definitions.select(type: Oxide::Language::Nodes::ObjectTypeDefinition)
        objects = build_objects(object_definitions)

        objects.each do |object|
          type_map[object.name] = object
        end

        # UnionTypeDefinition
        union_definitions = document.definitions.select(type: Oxide::Language::Nodes::UnionTypeDefinition)
        unions = build_unions(union_definitions)
        unions.each do |union_type|
          type_map[union_type.name] = union_type
        end

        query = type_map[query_definition.named_type.not_nil!.name].as(Oxide::Types::ObjectType)

        mutation_definition = schema_definition.operation_type_definitions.find { |op_def| op_def.operation_type == "mutation"  }
        mutation = if mutation_definition
          type_map[mutation_definition.named_type.not_nil!.name].as(Oxide::Types::ObjectType)
        end

        schema = Oxide::Schema.new(
          query: query,
          mutation: mutation,
          orphan_types: type_map.values
        )
      end

      private def build_unions(union_definitions)
        union_definitions.map do |union_definition|
          possible_types = union_definition.member_types.map do |member_type|
            get_type(member_type.name)
          end

          Oxide::Types::UnionType.new(
            name: union_definition.name,
            type_resolver: type_resolvers[union_definition.name],
            possible_types: possible_types
          )
        end
      end

      private def build_enums(enum_definitions)
        enum_definitions.map do |enum_definition|
          enum_values = enum_definition.value_definitions.map do |value_definition|
            Oxide::Types::EnumValue.new(
              name: value_definition.name
            )
          end

          Oxide::Types::EnumType.new(
            name: enum_definition.name,
            values: enum_values
          )
        end
      end

      private def build_scalars(scalar_definitions)
        scalar_definitions.map do |scalar_definition|
          Oxide::Types::CustomScalarType.new(scalar_definition.name)
        end
      end

      private def build_objects(object_definitions)
        object_definitions.map do |object_definition|
          interfaces = object_definition.implements.map do |implement|
            interface_map[implement.name]
          end

          Oxide::Types::ObjectType.new(
            name: object_definition.name,
            fields: build_fields(object_definition.field_definitions),
            interfaces: interfaces
          )
        end
      end

      private def build_interfaces(interface_definitions)
        interface_definitions.map do |interface_definition|
          interface = Oxide::Types::InterfaceType.new(
            name: interface_definition.name,
            type_resolver: type_resolvers[interface_definition.name],
            fields: build_fields(interface_definition.field_definitions)
          )
        end
      end

      private def build_fields(field_definitions)
        field_definitions.each_with_object({} of String => Oxide::Field) do |field_definition, memo|
          memo[field_definition.name] = Oxide::Field.new(
            type: build_type(field_definition.type),
            arguments: build_arguments(field_definition.argument_definitions)
          )
        end
      end

      private def build_arguments(argument_definitions)
        argument_definitions.each_with_object({} of String => Oxide::Argument) do |argument_definition, memo|
          default_value = argument_definition.default_value

          memo[argument_definition.name] = if default_value
            Oxide::Argument.new(
              type: build_type(argument_definition.type),
              default_value: default_value.value.as(Oxide::Argument::DefaultValue)
            )
          else
            Oxide::Argument.new(
              type: build_type(argument_definition.type)
            )
          end
        end
      end

      private def build_type(type)
        case type
        when Oxide::Language::Nodes::NamedType
          build_named_type(type)
        when Oxide::Language::Nodes::ListType
          Oxide::Types::ListType.new(
            of_type: build_type(type.of_type)
          )
        when Oxide::Language::Nodes::NonNullType
          Oxide::Types::NonNullType.new(
            of_type: build_type(type.of_type)
          )
        else
          raise "Could not resolve type"
        end
      end

      private def build_named_type(type)
        case type.name
        when "String"
          Oxide::Types::StringType.new
        when "Int"
          Oxide::Types::IntType.new
        when "ID"
          Oxide::Types::IdType.new
        when "Float"
          Oxide::Types::FloatType.new
        when "Boolean"
          Oxide::Types::BooleanType.new
        else
          Oxide::Types::LateBoundType.new(type.name)
        end
      end

      private def get_type(name)
        type_map[name]? || Oxide::Types::LateBoundType.new(name)
      end

      private def parse
        parser = Oxide::Language::SchemaParser.new
        parser.parse(input)
      end
    end
  end
end