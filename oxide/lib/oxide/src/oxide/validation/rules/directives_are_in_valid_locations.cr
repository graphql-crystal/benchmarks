module Oxide
  module Validation
    class DirectivesAreInValidLocations < Rule
      def initialize
        @adjacent_stack = [] of Tuple(Oxide::Language::Nodes::Node, Directive::Location)
      end

      macro record_adjacent(node, location)
        def enter(node : {{ node }}, context)
          @adjacent_stack << {node, {{location}}}
        end

        def leave(node : {{ node }}, context)
          @adjacent_stack.pop
        end
      end

      record_adjacent Oxide::Language::Nodes::FragmentSpread, Directive::Location::FRAGMENT_SPREAD
      record_adjacent Oxide::Language::Nodes::InlineFragment, Directive::Location::INLINE_FRAGMENT
      record_adjacent Oxide::Language::Nodes::Field, Directive::Location::FIELD
      record_adjacent Oxide::Language::Nodes::FragmentDefinition, Directive::Location::FRAGMENT_DEFINITION

      def enter(node : Oxide::Language::Nodes::OperationDefinition, context)
        location = case node.operation_type
        when "query"
          Directive::Location::QUERY
        when "mutation"
          Directive::Location::MUTATION
        when "subscription"
          Directive::Location::SUBSCRIPTION
        else
          raise "Invalid location"
        end

        @adjacent_stack << {node, location}
      end

      def leave(node : Oxide::Language::Nodes::OperationDefinition, context)
        @adjacent_stack.pop
      end

      def enter(node : Oxide::Language::Nodes::Directive, context)
        directive_name = node.name
        directive_definition = context.schema.directives.find { |directive| directive.name == directive_name }

        if directive_definition
          locations = directive_definition.locations

          if adjacent = @adjacent_stack.last
            node, location = adjacent

            unless locations.includes?(location)
              context.errors << Error.new("'@#{directive_name}' can't be applied to #{location.to_human} (allowed: #{locations.map(&.to_human).join(", ")})")
            end
          end
        end
      end
    end
  end
end
