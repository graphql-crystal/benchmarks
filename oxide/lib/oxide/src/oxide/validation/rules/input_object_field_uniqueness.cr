module Oxide
  module Validation
    class InputObjectFieldUniqueness < Rule
      def enter(node : Oxide::Language::Nodes::ObjectValue, context)
        grouped_fields = node.fields.group_by(&.name)
        grouped_fields.each do |name, fields|
          if fields.size > 1
            context.errors << Error.new("There can be only one input field named \"#{name}\"")
          end
        end
      end
    end
  end
end