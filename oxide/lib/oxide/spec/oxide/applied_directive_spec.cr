require "../spec_helper"

describe Oxide::AppliedDirective do
  it "constructs using JSON::Any" do
    Oxide::AppliedDirective.new(
      name: "link",
      values: {
        "url" => JSON::Any.new("https://specs.apollo.dev/federation/v2.3"),
        "import" => JSON::Any.new([
          JSON::Any.new("@composeDirective"),
          JSON::Any.new("@extends"),
          JSON::Any.new("@external"),
          JSON::Any.new("@key"),
          JSON::Any.new("@inaccessible"),
          JSON::Any.new("@interfaceObject"),
          JSON::Any.new("@override"),
          JSON::Any.new("@provides"),
          JSON::Any.new("@requires"),
          JSON::Any.new("@shareable"),
          JSON::Any.new("@tag")
        ])
      }
    )
  end

  it "constructs using serialized json" do
    Oxide::AppliedDirective.new(
      name: "link",
      values: {
        "url" => JSON.parse(%("https://specs.apollo.dev/federation/v2.3")),
        "import" => JSON.parse(%([
          "@composeDirective",
          "@extends",
          "@external",
          "@key",
          "@inaccessible",
          "@interfaceObject",
          "@override",
          "@provides",
          "@requires",
          "@shareable",
          "@tag"
        ]))
      }
    )
  end
end