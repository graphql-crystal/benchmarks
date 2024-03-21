module Oxide
  module Validation
    class Context
      alias Composite = Oxide::Types::ObjectType | Oxide::Types::InterfaceType | Oxide::Types::UnionType

      getter schema : Oxide::Schema
      getter query : Oxide::Query

      getter type_stack : Array(Oxide::Type?)
      getter parent_type_stack : Array(Composite?)
      getter input_type_stack : Array(Oxide::Type?)
      getter field_definition_stack : Array(Tuple(String, Oxide::BaseField)?)
      # default_value_stack
      property directive : Oxide::Directive?
      property argument : Oxide::Argument?
      property enum_value : Oxide::Types::EnumValue?

      getter errors : Array(Error)

      def initialize(@schema, @query)
        @type_stack = [] of Oxide::Type?
        @input_type_stack = [] of Oxide::Type?
        @parent_type_stack = [] of Composite?
        @field_definition_stack = [] of Tuple(String, Oxide::BaseField)?
        @errors = [] of Error
      end

      def type
        type_stack.last?
      end

      def input_type
        input_type_stack.last?
      end

      def parent_type
        parent_type_stack.last?
      end

      def field_definition : Tuple(String, Oxide::BaseField)?
        field_definition_stack.last?
      end
    end
  end
end