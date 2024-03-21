module Oxide
  module Execution
    struct ResolutionInfo
      getter schema : Oxide::Schema
      getter context : Execution::Context
      getter field : Oxide::BaseField?

      delegate query, to: context

      def initialize(@schema, @context, @field = nil)
      end
    end
  end
end