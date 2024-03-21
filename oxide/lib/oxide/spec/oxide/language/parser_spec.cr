require "../../spec_helper"

describe Oxide::Language::Parser do
  it "parses name" do
    parser = Oxide::Language::Parser.new("name")
    parser.parse_name.should eq("name")
    parser.expect_current_token(Oxide::Language::Token::Kind::EOF)
  end

  it "parses object value" do
    input = <<-INPUT
      { foo: "bar" }
    INPUT

    parser = Oxide::Language::Parser.new(input)
    parser.parse_object(true).should eq(Oxide::Language::Nodes::ObjectValue.new(
      [
        Oxide::Language::Nodes::ObjectField.new(
          name: "foo",
          value: Oxide::Language::Nodes::StringValue.new("bar")
        )
      ]
    ))

    parser.expect_current_token(Oxide::Language::Token::Kind::EOF)
  end

  it "parses argument" do
    input = <<-INPUT
      object: { foo: "bar" }
    INPUT

    parser = Oxide::Language::Parser.new(input)
    parser.parse_argument(false).should eq(Oxide::Language::Nodes::Argument.new(
      name: "object",
      value: Oxide::Language::Nodes::ObjectValue.new(
        [
          Oxide::Language::Nodes::ObjectField.new(
            name: "foo",
            value: Oxide::Language::Nodes::StringValue.new("bar")
          )
        ]
      )
    ))

    parser.expect_current_token(Oxide::Language::Token::Kind::EOF)
  end

  it "parses arguments" do
    input = <<-INPUT
      (object: { foo: "bar" })
    INPUT

    parser = Oxide::Language::Parser.new(input)
    parser.parse_arguments(true).should eq([
      Oxide::Language::Nodes::Argument.new(
        name: "object",
        value: Oxide::Language::Nodes::ObjectValue.new(
          [
            Oxide::Language::Nodes::ObjectField.new(
              name: "foo",
              value: Oxide::Language::Nodes::StringValue.new("bar")
            )
          ]
        )
      )
    ])

    parser.expect_current_token(Oxide::Language::Token::Kind::EOF)
  end

  it "parses fragments" do
    input = <<-INPUT
      query {
        transactions {
          ...TransactionInfo
        }
      }

      fragment TransactionInfo on Transaction {
        id
        reference
      }
    INPUT

    parser = Oxide::Language::Parser.new(input)
    parser.parse.should eq(Oxide::Language::Nodes::Document.new(
      definitions: [
        Oxide::Language::Nodes::OperationDefinition.new(
          operation_type: "query",
          selection_set: Oxide::Language::Nodes::SelectionSet.new(
            selections: [
              Oxide::Language::Nodes::Field.new(
                name: "transactions",
                selection_set: Oxide::Language::Nodes::SelectionSet.new(
                  selections: [
                    Oxide::Language::Nodes::FragmentSpread.new(
                      name: "TransactionInfo"
                    ).as(Oxide::Language::Nodes::Selection)
                  ]
                )
              ).as(Oxide::Language::Nodes::Selection)
            ]
          )
        ),
        Oxide::Language::Nodes::FragmentDefinition.new(
          name: "TransactionInfo",
          selection_set: Oxide::Language::Nodes::SelectionSet.new(
            selections: [
              Oxide::Language::Nodes::Field.new(
                name: "id"
              ).as(Oxide::Language::Nodes::Selection),
              Oxide::Language::Nodes::Field.new(
                name: "reference"
              ).as(Oxide::Language::Nodes::Selection),
            ]
          ),
          type_condition: Oxide::Language::Nodes::NamedType.new(
            name: "Transaction"
          )
        )
      ]
    ))

    parser.expect_current_token(Oxide::Language::Token::Kind::EOF)
  end

  it "parses argument variables" do
    input = <<-INPUT
      query ($foo: Boolean = true, $bar: Boolean = false) {
        field @skip(if: $foo) {
          subfieldA
        }
        field @skip(if: $bar) {
          subfieldB
        }
      }
    INPUT

    parser = Oxide::Language::Parser.new(input)
    parser.parse

    parser.expect_current_token(Oxide::Language::Token::Kind::EOF)
  end

  it "parses operation with name" do
    input = <<-INPUT
      query badComplexValue {
        findDog(searchBy: { name: 123 }) {
          name
        }
      }
    INPUT

    parser = Oxide::Language::Parser.new(input)
    parser.parse

    parser.expect_current_token(Oxide::Language::Token::Kind::EOF)
  end

  it "parses directives", focus: false do
    input = <<-INPUT
      query ($foo: Boolean = true, $bar: Boolean = false) {
        field @skip(if: $foo) {
          subfieldA
        }
        field @skip(if: $bar) {
          subfieldB
        }
      }
    INPUT

    parser = Oxide::Language::Parser.new(input)
    parser.parse

    parser.expect_current_token(Oxide::Language::Token::Kind::EOF)
  end

  it "supports object values" do
    schema = <<-QUERY
      query {
        fieldWithObject(object: { foo: "bar" }) {
          name
        }
      }
    QUERY

    Oxide::Language::Parser.parse(schema)
  end

  it "raises on incorrect operation type" do
    input = <<-INPUT
      notAnOperation {
        selection
      }
    INPUT

    expect_raises Oxide::ParseException, "Expected (query, mutation, subscription, fragment), found notAnOperation" do
      parser = Oxide::Language::Parser.new(input)
      parser.parse
    end
  end

  it "supports list values" do
    schema = <<-QUERY
      query {
        fieldWithList(list: ["first", "second"]) {
          name
        }
      }
    QUERY

    document = Oxide::Language::Parser.parse(schema)
  end
end

def print_input(input)
  lexer = Oxide::Language::Lexer.new(input)
  lexer.next_token

  while !lexer.token.kind.eof?
    puts lexer.token.kind
    case lexer.token.kind
    when .name?, .string?
      puts lexer.token.raw_value
    end
    lexer.next_token
  end
end