require "../directive"

module Oxide
  module Directives
    SkipDirective = Oxide::Directive.new(
      name: "skip",
      arguments: {
        "if" => Oxide::Argument.new(
          type: Oxide::Types::NonNullType.new(
            of_type: Oxide::Types::BooleanType.new
          )
        )
      },
      locations: [Directive::Location::FIELD, Directive::Location::FRAGMENT_SPREAD, Directive::Location::INLINE_FRAGMENT]
    )
  end
end