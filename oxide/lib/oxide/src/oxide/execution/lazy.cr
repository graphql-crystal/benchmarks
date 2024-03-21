module Oxide
  module Execution
    class Lazy(T)
      property value : T | Nil
      property promise : Proc(Nil)
      property? fulfilled

      def initialize(&blk : ->)
        @promise = blk
        @fulfilled = false
      end

      def fulfill(value : T)
        @value = value
        @fulfilled = true
      end

      def resolve
        promise.call
      end
    end
  end
end