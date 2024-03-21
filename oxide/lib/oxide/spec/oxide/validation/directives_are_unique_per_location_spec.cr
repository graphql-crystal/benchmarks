require "../../spec_helper"

describe Oxide::Validation::DirectivesAreUniquePerLocation do
  it "counter example #166" do
    query_string = <<-QUERY
      query ($foo: Boolean = true, $bar: Boolean = false) {
        field @skip(if: $foo) @skip(if: $bar)
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::DirectivesAreUniquePerLocation.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(1)
    pipeline.errors.should contain(Oxide::Error.new("The directive \"skip\" can only be used once at this location."))
  end

  it "example #167" do
    query_string = <<-QUERY
      query ($foo: Boolean = true, $bar: Boolean = false) {
        field @skip(if: $foo) {
          subfieldA
        }
        field @skip(if: $bar) {
          subfieldB
        }
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::DirectivesAreUniquePerLocation.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(0)
  end
end