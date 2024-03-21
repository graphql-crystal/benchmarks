require "../../spec_helper"

describe Oxide::Validation::ArgumentUniqueness do
  it "gives an error if when selecting multiple arguments with the same name" do
    query_string = <<-QUERY
      query {
        dog(name: "George", name: 1) {
          nickname
        }
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::ArgumentUniqueness.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(1)
    pipeline.errors.should contain(Oxide::Error.new("There can be only one argument named \"name\""))
  end
end