# require "../../spec_helper"

# class BuilderResolver
#   include Oxide::Resolver

#   def resolve(object, field_name, argument_values, context, resolution_info)
#   end
# end

# class BuilderTypeResolver < Oxide::TypeResolver
#   def resolve_type(object, context)
#     nil
#   end
# end

# describe Oxide::Utils::Builder do
#   it "parses schema and builds schema object" do
#     input = <<-INPUT
#       schema {
#         query: Query
#       }

#       type Query {
#         dog: Dog
#       }

#       enum DogCommand { SIT, DOWN, HEEL }

#       type Dog implements Pet {
#         name: String!
#         nickname: String
#         barkVolume: Int
#         doesKnowCommand(dogCommand: DogCommand!): Boolean!
#         isHousetrained(atOtherHomes: Boolean): Boolean!
#         owner: Human
#       }

#       interface Sentient {
#         name: String!
#       }

#       interface Pet {
#         name: String!
#       }

#       type Alien implements Sentient {
#         name: String!
#         homePlanet: String
#       }

#       type Human implements Sentient {
#         name: String!
#       }

#       enum CatCommand { JUMP }

#       type Cat implements Pet {
#         name: String!
#         nickname: String
#         doesKnowCommand(catCommand: CatCommand!): Boolean!
#         meowVolume: Int
#       }

#       union CatOrDog = Cat | Dog
#       union DogOrHuman = Dog | Human
#       union HumanOrAlien = Human | Alien
#     INPUT

#     builder = Oxide::Utils::Builder.new(
#       input,
#       resolvers: Hash(String, Oxide::Resolver).new(default_value: BuilderResolver.new),
#       type_resolvers: Hash(String, Oxide::TypeResolver).new(default_value: BuilderTypeResolver.new)
#     )
#     builder.build
#   end

#   it "supports field arguments with default values" do
#     input = <<-INPUT
#       schema {
#         query: Query
#       }

#       type Query {
#         isFavouriteNumber(number: Int = 42): Boolean!
#       }
#     INPUT

#     builder = Oxide::Utils::Builder.new(
#       input,
#       resolvers: Hash(String, Oxide::Resolver).new(default_value: BuilderResolver.new),
#       type_resolvers: Hash(String, Oxide::TypeResolver).new(default_value: BuilderTypeResolver.new)
#     )

#     schema = builder.build

#     field = schema.query.fields["isFavouriteNumber"]
#     field.should_not be_nil

#     argument = field.not_nil!.arguments["number"]?
#     argument.should_not be_nil

#     argument.not_nil!.has_default_value?.should be_true
#     argument.not_nil!.default_value.should eq(42)
#   end
# end