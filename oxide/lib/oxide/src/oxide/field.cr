require "./argument"

module Oxide
  abstract class BaseField
    abstract def type : Oxide::Type
    abstract def description : String?
    abstract def deprecation_reason : String?
    abstract def arguments : Hash(String, Oxide::Argument)
  end

  class Field(I, O) < BaseField
    getter type : Oxide::Type
    getter description : String?
    getter deprecation_reason : String?
    getter arguments : Hash(String, Oxide::Argument)
    setter resolve : Proc(Resolution(I), O)
    property applied_directives : Array(AppliedDirective)

    def initialize(@type, @resolve : Proc(Resolution(I), O), @description = nil, @deprecation_reason = nil, @arguments = {} of String => Oxide::Argument, @applied_directives = [] of AppliedDirective)
    end

    def resolve(object, argument_values, context, resolution_info)
      if object.is_a?(I)
        execution = Resolution.new(
          object: object.as(I),
          arguments: argument_values,
          execution_context: context,
          resolution_info: resolution_info
        )

        @resolve.call(execution)
      end
      # if object.is_a?(I)
      #   resolve_proc = @resolve

      #   case resolve_proc
      #   when Proc(I, O)
      #     resolve_proc.call(object)
      #   when Proc(I, ArgumentValues, O)
      #     resolve_proc.call(object, argument_values)
      #   when Proc(I, ArgumentValues, Execution::Context, O)
      #     resolve_proc.call(object, argument_values, context)
      #   when Proc(I, ArgumentValues, Execution::Context, Execution::ResolutionInfo, O)
      #     resolve_proc.call(object, argument_values, context, resolution_info)
      #   end
      # else
      #   raise "Calling resolve with incorrect value type, expecting #{I} got #{object.class}"
      # end
    end

    def deprecated?
      !deprecation_reason.nil?
    end
  end
end
