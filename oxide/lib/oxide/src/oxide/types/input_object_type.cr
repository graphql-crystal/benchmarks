require "../type"

module Oxide
  module Types
    class InputObjectType < Type
      getter name : String
      getter description : String?
      getter input_fields : Hash(String, Argument)
      property applied_directives : Array(AppliedDirective)

      def initialize(@name, @description = nil, @input_fields = {} of String => Argument, @applied_directives = [] of AppliedDirective)
      end

      def kind
        "INPUT_OBJECT"
      end

      def coerce(value : JSON::Any) : CoercedInput
        coerce(value.as_h)
      end

      def coerce(value : Hash) : CoercedInput
        cooerced_values = Hash(String, CoercedInput).new

        input_fields.each do |name, argument|
          has_value = value.has_key?(name)

          if has_value
            cooerced_values[name] = argument.type.coerce(value[name]).as(CoercedInput)
          else
            if argument.has_default_value?
              cooerced_values[name] = argument.type.coerce(argument.default_value).as(CoercedInput)
            end
          end
        end

        cooerced_values
      end

      def coerce(value) : CoercedInput
        raise InputCoercionError.new("INPUT_OBJECT did not receive a hash")
      end

      def serialize(value) : SerializedOutput
        coerce(value)
      end

      def input_type? : Bool
        true
      end

      def output_type? : Bool
        false
      end
    end
  end
end