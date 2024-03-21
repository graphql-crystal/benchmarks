require "spec"
require "../src/oxide"
require "./dummy/schema"

DogCommandEnum = Oxide::Types::EnumType.new(
  name: "DogCommand",
  values: [
    Oxide::Types::EnumValue.new(name: "SIT"),
    Oxide::Types::EnumValue.new(name: "DOWN"),
    Oxide::Types::EnumValue.new(name: "HEEL")
  ]
)

class SentientTypeResolver < Oxide::TypeResolver
  def resolve_type(object, context)
    AlienType
  end
end

class CatOrDogTypeResolver < Oxide::TypeResolver
  def resolve_type(object, context)
    CatType
  end
end

class DogOrHumanTypeResolver < Oxide::TypeResolver
  def resolve_type(object, context)
    HumanType
  end
end

class HumanOrAlienTypeResolver < Oxide::TypeResolver
  def resolve_type(object, context)
    HumanType
  end
end

class PetTypeResolver < Oxide::TypeResolver
  def resolve_type(object, context)
    DogType
  end
end

abstract class Pet
  abstract def name : String
end

class Cat < Pet
  getter name : String
  getter nickname : String?
  getter? knows_command : Bool?
  getter meow_volume : Int32?

  def initialize(@name, @nickname, @knows_command, @meow_volume)
  end
end

class Dog < Pet
  getter name : String
  getter nickname : String?
  getter bark_volume : Int32?
  getter? knows_command : Bool
  getter? house_trained : Bool
  getter owner : Human?

  def initialize(@name, @nickname, @bark_volume, @knows_command, @house_trained, @owner)
  end
end

abstract class Sentient
  abstract def name : String
end

class Alien < Sentient
  getter name : String
  getter home_planet : String

  def initialize(@name, @home_planet)
  end
end

class Human < Sentient
  getter name : String
  getter pets : Array(Pet)

  def initialize(@name, @pets)
  end
end

SentientInterface = Oxide::Types::InterfaceType.new(
  name: "Sentient",
  type_resolver: SentientTypeResolver.new,
  fields: {
    "name" => Oxide::Field.new(
      type: Oxide::Types::NonNullType.new(
        of_type: Oxide::Types::StringType.new
      ),
      resolve: ->(resolution : Oxide::Resolution(Sentient)) { resolution.object.name }
    )
  }
)

AlienType = Oxide::Types::ObjectType.new(
  name: "Alien",
  interfaces: [SentientInterface],
  fields: {
    "homePlanet" => Oxide::Field.new(
      type: Oxide::Types::StringType.new,
      resolve: ->(resolution : Oxide::Resolution(Alien)) { resolution.object.home_planet }
    )
  }
)

HumanType = Oxide::Types::ObjectType.new(
  name: "Human",
  interfaces: [SentientInterface],
)

PetInterface = Oxide::Types::InterfaceType.new(
  name: "Pet",
  type_resolver: PetTypeResolver.new,
  fields: {
    "name" => Oxide::Field.new(
      type: Oxide::Types::NonNullType.new(
        of_type: Oxide::Types::StringType.new
      ),
      resolve: ->(resolution : Oxide::Resolution(Pet)) { resolution.object.name }
    )
  }
)

CatCommandEnum = Oxide::Types::EnumType.new(
  name: "CatCommand",
  values: [
    Oxide::Types::EnumValue.new(name: "JUMP")
  ]
)

CatType = Oxide::Types::ObjectType.new(
  name: "Cat",
  interfaces: [PetInterface],
  fields: {
    "name" => Oxide::Field.new(
      type: Oxide::Types::NonNullType.new(
        of_type: Oxide::Types::StringType.new
      ),
      resolve: ->(resolution : Oxide::Resolution(Cat)) { resolution.object.name }
    ),
    "nickname" => Oxide::Field.new(
      type: Oxide::Types::StringType.new,
      resolve: ->(resolution : Oxide::Resolution(Cat)) { resolution.object.nickname }
    ),
    "doesKnowCommand" => Oxide::Field.new(
      arguments: {
        "catCommand" => Oxide::Argument.new(
          type: Oxide::Types::NonNullType.new(
            of_type: CatCommandEnum
          )
        )
      },
      type: Oxide::Types::NonNullType.new(
        of_type: Oxide::Types::BooleanType.new
      ),
      resolve: ->(resolution : Oxide::Resolution(Cat)) { resolution.object.knows_command? }
    ),
    "meowVolume" => Oxide::Field.new(
      type: Oxide::Types::IntType.new,
      resolve: ->(resolution : Oxide::Resolution(Cat)) { resolution.object.meow_volume }
    )
  }
)

CatOrDogUnion = Oxide::Types::UnionType.new(
  name: "CatOrDog",
  type_resolver: CatOrDogTypeResolver.new,
  possible_types: [
    CatType.as(Oxide::Type),
    DogType.as(Oxide::Type)
  ]
)

DogOrHumanUnion = Oxide::Types::UnionType.new(
  name: "DogOrHuman",
  type_resolver: DogOrHumanTypeResolver.new,
  possible_types: [
    DogType.as(Oxide::Type),
    HumanType.as(Oxide::Type)
  ]
)

HumanOrAlienUnion = Oxide::Types::UnionType.new(
  name: "HumanOrAlien",
  type_resolver: HumanOrAlienTypeResolver.new,
  possible_types: [
    AlienType.as(Oxide::Type),
    HumanType.as(Oxide::Type)
  ]
)

DogType = Oxide::Types::ObjectType.new(
  name: "Dog",
  interfaces: [PetInterface],
  fields: {
    "name" => Oxide::Field.new(
      type: Oxide::Types::NonNullType.new(
        of_type: Oxide::Types::StringType.new
      ),
      resolve: ->(resolution : Oxide::Resolution(Dog)) { resolution.object.name }
    ),
    "nickname" => Oxide::Field.new(
      type: Oxide::Types::StringType.new,
      resolve: ->(resolution : Oxide::Resolution(Dog)) { resolution.object.nickname }
    ),
    "barkVolume" => Oxide::Field.new(
      type: Oxide::Types::IntType.new,
      resolve: ->(resolution : Oxide::Resolution(Dog)) { resolution.object.bark_volume }
    ),
    "doesKnowCommand" => Oxide::Field.new(
      arguments: {
        "dogCommand" => Oxide::Argument.new(
          type: Oxide::Types::NonNullType.new(
            of_type: DogCommandEnum
          )
        )
      },
      type: Oxide::Types::NonNullType.new(
        of_type: Oxide::Types::BooleanType.new
      ),
      resolve: ->(resolution : Oxide::Resolution(Dog)) { resolution.object.knows_command? }
    ),
    "isHousetrained" => Oxide::Field.new(
      arguments: {
        "atOtherHomes" => Oxide::Argument.new(
          type: Oxide::Types::BooleanType.new
        )
      },
      type: Oxide::Types::NonNullType.new(
        of_type: Oxide::Types::BooleanType.new
      ),
      resolve: ->(resolution : Oxide::Resolution(Dog)) { resolution.object.house_trained? }
    ),
    "owner" => Oxide::Field.new(
      type: HumanType,
      resolve: ->(resolution : Oxide::Resolution(Dog)) { resolution.object.owner }
    ),
  }
)

FindDogInputType = Oxide::Types::InputObjectType.new(
  name: "FindDogInput",
  input_fields: {
    "name" => Oxide::Argument.new(
      type: Oxide::Types::StringType.new
    ),
    "owner" => Oxide::Argument.new(
      type: Oxide::Types::StringType.new
    )
  }
)

ArgumentsType = Oxide::Types::ObjectType.new(
  name: "Arguments",
  fields: {
    "multipleRequirements" => Oxide::Field.new(
      arguments: {
        "x" => Oxide::Argument.new(
          type: Oxide::Types::NonNullType.new(of_type: Oxide::Types::IntType.new)
        ),
        "y" => Oxide::Argument.new(
          type: Oxide::Types::NonNullType.new(of_type: Oxide::Types::IntType.new)
        )
      },
      type: Oxide::Types::NonNullType.new(of_type: Oxide::Types::IntType.new),
      resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
    ),
    "booleanArgField" => Oxide::Field.new(
      arguments: {
        "booleanArg" => Oxide::Argument.new(type: Oxide::Types::BooleanType.new)
      },
      type: Oxide::Types::BooleanType.new,
      resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
    ),
    "floatArgField" => Oxide::Field.new(
      arguments: {
        "floatArg" => Oxide::Argument.new(type: Oxide::Types::FloatType.new)
      },
      type: Oxide::Types::FloatType.new,
      resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
    ),
    "intArgField" => Oxide::Field.new(
      arguments: {
        "intArg" => Oxide::Argument.new(type: Oxide::Types::IntType.new)
      },
      type: Oxide::Types::IntType.new,
      resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
    ),
    "nonNullBooleanArgField" => Oxide::Field.new(
      arguments: {
        "nonNullBooleanArg" => Oxide::Argument.new(
          type: Oxide::Types::NonNullType.new(of_type: Oxide::Types::BooleanType.new)
        )
      },
      type: Oxide::Types::NonNullType.new(of_type: Oxide::Types::BooleanType.new),
      resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
    ),
    "booleanListArgField" => Oxide::Field.new(
      arguments: {
        "booleanListArg" => Oxide::Argument.new(
          type: Oxide::Types::NonNullType.new(of_type: Oxide::Types::ListType.new(of_type: Oxide::Types::BooleanType.new))
        )
      },
      type: Oxide::Types::ListType.new(of_type: Oxide::Types::BooleanType.new),
      resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
    ),
    "optionalNonNullBooleanArgField" => Oxide::Field.new(
      arguments: {
        "optionalBooleanArg" => Oxide::Argument.new(
          type: Oxide::Types::NonNullType.new(of_type: Oxide::Types::BooleanType.new),
          default_value: false
        )
      },
      type: Oxide::Types::NonNullType.new(of_type: Oxide::Types::BooleanType.new),
      resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
    )
  }
)

ValidationsSchema = Oxide::Schema.new(
  query: Oxide::Types::ObjectType.new(
    name: "Query",
    fields: {
      "dog" => Oxide::Field.new(
        type: DogType,
        resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
      ),
      "findDog" => Oxide::Field.new(
        arguments: {
          "searchBy" => Oxide::Argument.new(
            type: FindDogInputType
          )
        },
        type: DogType,
        resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
      ),
      # Extended for LeafFieldSelections test
      "human" => Oxide::Field.new(
        type: HumanType,
        resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
      ),
      "pet" => Oxide::Field.new(
        type: PetInterface,
        resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
      ),
      "catOrDog" => Oxide::Field.new(
        type: CatOrDogUnion,
        resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
      ),
      "booleanList" => Oxide::Field.new(
        arguments: {
          "booleanListArg" => Oxide::Argument.new(
            type: Oxide::Types::ListType.new(
              of_type: Oxide::Types::NonNullType.new(of_type: Oxide::Types::BooleanType.new)
            )
          )
        },
        type: Oxide::Types::BooleanType.new,
        resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
      ),
      # Extended for Argument Names
      "arguments" => Oxide::Field.new(
        type: ArgumentsType,
        resolve: ->(resolution : Oxide::Resolution(Query)) { nil }
      )
    }
  ),
  orphan_types: [
    CatOrDogUnion.as(Oxide::Type),
    DogOrHumanUnion.as(Oxide::Type),
    HumanOrAlienUnion.as(Oxide::Type)
  ]
)