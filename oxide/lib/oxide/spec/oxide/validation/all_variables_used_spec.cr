require "../../spec_helper"

describe Oxide::Validation::AllVariablesUsed do
  it "counter example #180" do
    query_string = <<-QUERY
      query variableUnused($atOtherHomes: Boolean) {
        dog {
          isHouseTrained
        }
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::AllVariablesUsed.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(1)
    pipeline.errors.should contain(Oxide::Error.new("Variable $atOtherHomes is declared by variableUnused but not used"))
  end

  it "example #181" do
    query_string = <<-QUERY
      query variableUsedInFragment($atOtherHomes: Boolean) {
        dog {
          ...isHouseTrainedFragment
        }
      }

      fragment isHouseTrainedFragment on Dog {
        isHouseTrained(atOtherHomes: $atOtherHomes)
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::AllVariablesUsed.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(0)
  end

  it "counter example #182" do
    query_string = <<-QUERY
      query variableNotUsedWithinFragment($atOtherHomes: Boolean) {
        dog {
          ...isHouseTrainedWithoutVariableFragment
        }
      }

      fragment isHouseTrainedWithoutVariableFragment on Dog {
        isHouseTrained
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::AllVariablesUsed.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(1)
    pipeline.errors.should contain(Oxide::Error.new("Variable $atOtherHomes is declared by variableNotUsedWithinFragment but not used"))
  end

  it "counter example #183" do
    query_string = <<-QUERY
      query queryWithUsedVar($atOtherHomes: Boolean) {
        dog {
          ...isHouseTrainedFragment
        }
      }

      query queryWithExtraVar($atOtherHomes: Boolean, $extra: Int) {
        dog {
          ...isHouseTrainedFragment
        }
      }

      fragment isHouseTrainedFragment on Dog {
        isHouseTrained(atOtherHomes: $atOtherHomes)
      }
    QUERY

    query = Oxide::Query.new(query_string)

    pipeline = Oxide::Validation::Pipeline.new(
      ValidationsSchema,
      query,
      [Oxide::Validation::AllVariablesUsed.new.as(Oxide::Validation::Rule)]
    )

    pipeline.execute

    pipeline.errors.size.should eq(1)
    pipeline.errors.should contain(Oxide::Error.new("Variable $extra is declared by queryWithExtraVar but not used"))
  end
end