require "../../spec_helper"

describe Oxide::Validation::VariablesAreInputTypes do
  it "example #171" do
    query_string = <<-QUERY
      query takesBoolean($atOtherHomes: Boolean) {
        dog {
          isHouseTrained(atOtherHomes: $atOtherHomes)
        }
      }

      query takesComplexInput($search: FindDogInput) {
        findDog(searchBy: $search) {
          name
        }
      }

      query TakesListOfBooleanBang($booleans: [Boolean!]) {
        booleanList(booleanListArg: $booleans)
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::VariablesAreInputTypes.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(0)
  end

  it "counter example #172" do
    query_string = <<-QUERY
      query takesCat($cat: Cat) {
        dog { name }
      }

      query takesDogBang($dog: Dog!) {
        dog { name }
      }

      query takesListOfPet($pets: [Pet]) {
        dog { name }
      }

      query takesCatOrDog($catOrDog: CatOrDog) {
        dog { name }
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::VariablesAreInputTypes.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(4)
    pipeline.errors.should contain(Oxide::Error.new("Cat isn't a valid input type (on $cat)"))
    pipeline.errors.should contain(Oxide::Error.new("Dog isn't a valid input type (on $dog)"))
    pipeline.errors.should contain(Oxide::Error.new("Pet isn't a valid input type (on $pets)"))
    pipeline.errors.should contain(Oxide::Error.new("CatOrDog isn't a valid input type (on $catOrDog)"))
  end
end