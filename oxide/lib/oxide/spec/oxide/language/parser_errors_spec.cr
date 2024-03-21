require "../../spec_helper"

describe Oxide::Language::Parser do
  it "handles unclosed bracket" do
    input = <<-INPUT
      {
        example {
          thing {
        }
      }
    INPUT

    expect_raises Oxide::ParseException, "Syntax Error: Expected Name, found RBrace" do
      Oxide::Language::Parser.parse(input)
    end
  end

  it "handles unclosed arguments" do
    input = <<-INPUT
      {
        example(foo: "bar", another: 123 {
          thing
        }
      }
    INPUT

    expect_raises Oxide::ParseException, "Syntax Error: Expected Name, found LBrace" do
      Oxide::Language::Parser.parse(input)
    end
  end
end