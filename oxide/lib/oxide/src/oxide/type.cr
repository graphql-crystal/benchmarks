require "./visitable"
require "./applied_directive"

module Oxide
  abstract class Type
    include Visitable

    abstract def name
    abstract def description
    abstract def coerce(value) : CoercedInput
    abstract def serialize(value) : SerializedOutput

    abstract def input_type? : Bool
    abstract def output_type? : Bool

    def unwrap(schema : Schema)
      self
    end
  end
end
