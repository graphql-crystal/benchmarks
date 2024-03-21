require "../../spec_helper"

describe Oxide::Language::Parser do
  describe "directive definition" do
    it "supports directive definitions on SCHEMA" do
      schema = <<-QUERY
        directive @example on SCHEMA | Field

        schema @example {
          query: Query
        }
      QUERY

      document = Oxide::Language::Parser.parse(schema)

      definitions = document.definitions.select(type: Oxide::Language::Nodes::DirectiveDefinition)
      directive_definition = definitions.find(&.name.===("example"))
      directive_definition.should_not be_nil

      schema_definitions = document.definitions.select(type: Oxide::Language::Nodes::SchemaDefinition)
      schema_definition = schema_definitions.first
      schema_definition.should_not be_nil

      schema_directive = schema_definition.directives.find(&.name.===("example"))
      schema_directive.should_not be_nil
    end

    it "supports repetatable" do
      schema = <<-QUERY
        directive @example repeatable on SCHEMA | Field
      QUERY

      Oxide::Language::Parser.parse(schema)
    end

    it "raises if directive location is invalid" do
      schema = <<-QUERY
        directive @example repeatable on INVALID
      QUERY

      expect_raises Oxide::ParseException, "Invalid directive location \"INVALID\"" do
        Oxide::Language::Parser.parse(schema)
      end
    end
  end

  it "parses scalar type definition" do
    schema = <<-QUERY
      scalar value
    QUERY

    document = Oxide::Language::Parser.parse(schema)
  end

  describe "descriptions" do
    it "example #36" do
      schema = <<-QUERY
        """
        A simple GraphQL schema which is well described.
        """
        schema {
          query: Query
        }

        """
        Root type for all your query operations
        """
        type Query {
          """
          Translates a string from a given language into a different language.
          """
          translate(
            "The original language that `text` is provided in."
            fromLanguage: Language

            "The translated language to be returned."
            toLanguage: Language

            "The text to be translated."
            text: String
          ): String
        }

        """
        The set of languages supported by `translate`.
        """
        enum Language {
          "English"
          EN

          "French"
          FR

          "Chinese"
          CH
        }
      QUERY

      Oxide::Language::Parser.parse(schema)
    end
  end

  describe "object type definition" do
    it "example #44" do
      schema = <<-QUERY
        type Person {
          name: String
          age: Int
          picture: Url
        }
      QUERY

      document = Oxide::Language::Parser.parse(schema)
    end

    it "example #49" do
      schema = <<-QUERY
        type Person {
          name: String
          age: Int
          picture: Url
          relationship: Person
        }
      QUERY

      document = Oxide::Language::Parser.parse(schema)
    end
  end

  describe "interface type definition" do
    it "example #65" do
      schema = <<-QUERY
        interface NamedEntity {
          name: String
        }

        interface ValuedEntity {
          value: Int
        }

        type Person implements NamedEntity {
          name: String
          age: Int
        }
      QUERY

      Oxide::Language::Parser.parse(schema)
    end
  end

  describe "union type definition" do
    it "example #75" do
      schema = <<-QUERY
        union SearchResult = Photo | Person

        type Person {
          name: String
          age: Int
        }

        type Photo {
          height: Int
          width: Int
        }

        type SearchQuery {
          firstSearchResult: SearchResult
        }
      QUERY

      Oxide::Language::Parser.parse(schema)
    end
  end

  describe "enum type definition" do
    it "example #79" do
      schema = <<-QUERY
        enum Direction {
          NORTH
          EAST
          SOUTH
          WEST
        }
      QUERY

      Oxide::Language::Parser.parse(schema)
    end
  end

  describe "input object type definition" do
    it "example #80" do
      schema = <<-QUERY
        input Point2D {
          x: Float
          y: Float
        }
      QUERY

      Oxide::Language::Parser.parse(schema)
    end
  end
end