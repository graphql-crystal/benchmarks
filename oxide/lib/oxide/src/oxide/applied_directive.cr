module Oxide
  class AppliedDirective
    getter name : String
    property values : Hash(String, JSON::Any)

    def initialize(@name : String, @values = {} of String => JSON::Any)
    end
  end
end