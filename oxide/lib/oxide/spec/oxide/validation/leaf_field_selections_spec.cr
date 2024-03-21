require "../../spec_helper"

describe Oxide::Validation::LeafFieldSelections do
  it "example #126" do
    query_string = <<-QUERY
      fragment scalarSelection on Dog {
        barkVolume
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::LeafFieldSelections.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(0)
  end

  it "counter example #127" do
    query_string = <<-QUERY
      fragment scalarSelectionsNotAllowedOnInt on Dog {
        barkVolume {
          sinceWhen
        }
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::LeafFieldSelections.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(1)
    pipeline.errors.should contain(Oxide::Error.new("Selections can't be made on scalars (field 'barkVolume' returns Int but has selections [sinceWhen])"))
  end

  it "counter example #129" do
    query_string = <<-QUERY
      query directQueryOnObjectWithoutSubFields {
        human
      }

      query directQueryOnInterfaceWithoutSubFields {
        pet
      }

      query directQueryOnUnionWithoutSubFields {
        catOrDog
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::LeafFieldSelections.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(3)
    pipeline.errors.should contain(Oxide::Error.new("Field must have selections (field 'human' returns Human but has no selections. Did you mean 'human { ... }'?)"))
    pipeline.errors.should contain(Oxide::Error.new("Field must have selections (field 'pet' returns Pet but has no selections. Did you mean 'pet { ... }'?)"))
    pipeline.errors.should contain(Oxide::Error.new("Field must have selections (field 'catOrDog' returns CatOrDog but has no selections. Did you mean 'catOrDog { ... }'?)"))
  end

  it "example #130" do
    query_string = <<-QUERY
      query directQueryOnObjectWithSubFields {
        human {
          name
        }
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::LeafFieldSelections.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(0)
  end
end