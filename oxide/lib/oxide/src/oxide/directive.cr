module Oxide
  class Directive
    enum Location
      # Executeable directives
      QUERY
      MUTATION
      SUBSCRIPTION
      FIELD
      FRAGMENT_DEFINITION
      FRAGMENT_SPREAD
      INLINE_FRAGMENT

      # Type system directives
      SCHEMA
      SCALAR
      OBJECT
      FIELD_DEFINITION
      ARGUMENT_DEFINITION
      INTERFACE
      UNION
      ENUM
      ENUM_VALUE
      INPUT_OBJECT
      INPUT_FIELD_DEFINITION

      def to_human
        case self
        when QUERY
          "queries"
        when MUTATION
          "mutations"
        when SUBSCRIPTION
          "subscriptions"
        when FIELD
          "fields"
        when FRAGMENT_SPREAD
          "fragment spreads"
        when INLINE_FRAGMENT
          "inline fragments"
        else
          to_s
        end
      end
    end

    getter name : String
    getter arguments : Hash(String, Oxide::Argument)
    getter locations : Array(Location)
    getter repeatable : Bool

    def initialize(@name : String, @arguments = {} of String => Oxide::Argument, @locations = [] of Location, @repeatable = false)
    end
  end
end