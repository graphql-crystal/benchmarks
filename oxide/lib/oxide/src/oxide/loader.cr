module Oxide
  abstract class Loader(Q, R)
    property queue : Array(Q)

    def initialize
      @queue = [] of Q
      @cache = {} of Q => Oxide::Execution::Lazy(R)
    end

    def resolve
      return if resolved?

      load_keys = @queue
      @queue = [] of Q

      perform(load_keys)
      resolve_unfulfilled_promises
    end

    abstract def perform(load_keys : Array(Q))

    def resolved?
      queue.empty?
    end

    def load(item : Q)
      queue << item

      @cache[item] ||= Oxide::Execution::Lazy(R).new {
        resolve
      }
    end

    private def fulfill(key, value)
      return unless @cache.has_key?(key)

      promise = @cache[key]
      promise.fulfill(value)
    end

    private def resolve_unfulfilled_promises
      @cache.values.reject(&.fulfilled?).each do |promise|
        promise.fulfill(nil)
      end
    end
  end
end