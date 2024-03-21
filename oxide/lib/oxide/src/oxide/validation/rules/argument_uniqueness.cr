module Oxide
  module Validation
    class ArgumentUniqueness < Rule
      def enter(node : Oxide::Language::Nodes::Field, context)
        arguments = node.arguments
        grouped_arguments = arguments.group_by &.name

        grouped_arguments.each do |name, arguments|
          if arguments.size > 1
            context.errors << Error.new("There can be only one argument named \"#{name}\"")
          end
        end
      end
    end
  end
end