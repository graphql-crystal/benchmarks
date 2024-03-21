require "../directive"

module Oxide
  module Directives
    SpecifiedByDirective = Oxide::Directive.new(
      name: "specifiedBy",
      arguments: {
        "url" => Oxide::Argument.new(
          type: Oxide::Types::NonNullType.new(
            of_type: Oxide::Types::StringType.new
          )
        )
      },
      locations: [Directive::Location::SCALAR]
    )
  end
end