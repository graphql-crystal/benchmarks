require "../type_resolver"
require "../type"

module Oxide
  module Types
    class InterfaceType < Type
      getter name : String
      getter description : String?
      getter type_resolver : TypeResolver
      getter interfaces : Array(Oxide::Types::InterfaceType)
      getter fields : Hash(String, BaseField)
      property applied_directives : Array(AppliedDirective)

      def initialize(@name, @type_resolver, @description = nil, fields = {} of String => BaseField, @interfaces = [] of Oxide::Types::InterfaceType, @applied_directives = [] of AppliedDirective)
        @fields = fields.transform_values { |v| v.as(BaseField) }
      end

      def kind
        "INTERFACE"
      end

      def coerce(value) : CoercedInput
        raise InputCoercionError.new("Invalid input type")
      end

      def serialize(value) : SerializedOutput
      end

      def input_type? : Bool
        false
      end

      def output_type? : Bool
        true
      end
    end
  end
end