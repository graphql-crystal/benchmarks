require "../directive"

module Oxide
  module Directives
    DeprecatedDirective = Oxide::Directive.new(
      name: "deprecated",
      arguments: {
        "reason" => Oxide::Argument.new(
          type: Oxide::Types::StringType.new,
          default_value: "No longer supported"
        )
      },
      locations: [
        Directive::Location::FIELD_DEFINITION,
        Directive::Location::ARGUMENT_DEFINITION,
        Directive::Location::INPUT_FIELD_DEFINITION,
        Directive::Location::ENUM_VALUE
      ]
    )
  end
end