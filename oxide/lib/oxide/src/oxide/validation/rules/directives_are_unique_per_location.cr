module Oxide
  module Validation
    class DirectivesAreUniquePerLocation < Rule

      macro check_location(node)
        def enter(node : {{ node }}, context)
          directives = node.directives
          directives.uniq(&.name).each do |directive|
            directive_name = directive.name

            named_directives = directives.select { |directive| directive.name == directive_name }

            unless named_directives.one?
              context.errors << Error.new("The directive \"#{directive_name}\" can only be used once at this location.")
            end
          end
        end
      end

      check_location Oxide::Language::Nodes::FragmentSpread
      check_location Oxide::Language::Nodes::InlineFragment
      check_location Oxide::Language::Nodes::Field
      check_location Oxide::Language::Nodes::FragmentDefinition
      check_location Oxide::Language::Nodes::OperationDefinition
    end
  end
end