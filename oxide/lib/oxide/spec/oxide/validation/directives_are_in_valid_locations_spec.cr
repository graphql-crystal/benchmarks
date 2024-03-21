require "../../spec_helper"

describe Oxide::Validation::DirectivesAreInValidLocations do
  it "counter example #165" do
    query_string = <<-QUERY
      query @skip(if: $foo) {
        field
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::DirectivesAreInValidLocations.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(1)
    pipeline.errors.should contain(Oxide::Error.new("'@skip' can't be applied to queries (allowed: fields, fragment spreads, inline fragments)"))
  end
end