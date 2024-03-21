require "../../spec_helper"

describe Oxide::Validation::InputObjectFieldNames do
  it "example #162" do
    query_string = <<-QUERY
      {
        findDog(searchBy: { name: "Fido" }) {
          name
        }
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::InputObjectFieldNames.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(0)
  end

  it "counter example #163" do
    query_string = <<-QUERY
      {
        findDog(searchBy: { favoriteCookieFlavor: "Bacon" }) {
          name
        }
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::InputObjectFieldNames.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(1)
    pipeline.errors.should contain(Oxide::Error.new("InputObject 'FindDogInput' doesn't accept argument 'favoriteCookieFlavor'"))
  end
end