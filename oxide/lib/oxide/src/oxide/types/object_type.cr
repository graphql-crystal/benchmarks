require "../field"
require "../type"
require "./interface_type"

module Oxide
  module Types
    class ObjectType < Type
      getter fields : Hash(String, BaseField)
      getter name : String
      getter description : String?
      getter interfaces : Array(Oxide::Types::InterfaceType)
      property applied_directives : Array(AppliedDirective)

      def initialize(
        @name,
        @description = nil,
        fields = {} of String => BaseField,
        @interfaces = [] of Oxide::Types::InterfaceType,
        @applied_directives = [] of AppliedDirective
      )
        @fields = fields.transform_values { |v| v.as(BaseField) }
      end

      def all_fields
        interfaces.reduce(fields) do |fields, interface|
          fields.merge(interface.fields)
        end
      end

      def kind
        "OBJECT"
      end

      def coerce(value) : CoercedInput
        raise InputCoercionError.new("Invalid input type")
      end

      def serialize(value) : SerializedOutput
        coerce(value)
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
