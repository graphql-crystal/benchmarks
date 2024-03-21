module Oxide
  VERSION = "0.1.0"

  alias CoercedInput = String | Int32 | Int64 | Float32 | Float64 | Bool | Nil | Array(CoercedInput) | Hash(String, CoercedInput)
  alias SerializedOutput = String | Int32 | Float32 | Float64 | Bool | Nil | Array(SerializedOutput) | Hash(String, SerializedOutput)

  struct Resolution(O)
    getter object : O
    getter arguments : ArgumentValues
    getter execution_context : Execution::Context
    getter resolution_info : Execution::ResolutionInfo

    delegate schema, to: resolution_info

    def initialize(@object : O, @execution_context, @resolution_info, @arguments = {} of String => SerializedOutput)
    end
  end
end

require "./oxide/schema"
# require "./oxide/utils/**"