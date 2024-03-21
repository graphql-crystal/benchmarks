require "../../spec_helper"

describe Oxide::Validation::DirectivesAreDefined do
  it "counter example" do
    query_string = <<-QUERY
      query {
        dog @missing {
          isHouseTrained
        }
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::DirectivesAreDefined.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(1)
    pipeline.errors.should contain(Oxide::Error.new("Directive @missing is not defined"))
  end

  it "example" do
    query_string = <<-QUERY
      query {
        dog {
          isHouseTrained @include(if: true)
        }
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::DirectivesAreDefined.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(0)
  end
end