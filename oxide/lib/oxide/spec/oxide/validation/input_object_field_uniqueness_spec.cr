require "../../spec_helper"

describe Oxide::Validation::InputObjectFieldUniqueness do
  it "counter example #164" do
    query_string = <<-QUERY
      {
        field(arg: { field: true, field: false })
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::InputObjectFieldUniqueness.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(1)
    pipeline.errors.should contain(Oxide::Error.new("There can be only one input field named \"field\""))
  end
end