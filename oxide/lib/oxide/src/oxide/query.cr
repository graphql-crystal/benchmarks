module Oxide
  class Query
    include JSON::Serializable
    include Language::Visitable

    @[JSON::Field(key: "query")]
    getter query_string : String

    getter variables : Hash(String, JSON::Any) = {} of String => JSON::Any

    @[JSON::Field(key: "operationName")]
    getter operation_name : String?

    @[JSON::Field(ignore: true)]
    @document : Oxide::Language::Nodes::Document?

    def initialize(@query_string, @variables = {} of String => JSON::Any, @operation_name = nil)
    end

    def accept(visitor : Language::Visitor)
      document.accept(visitor)
    end

    def document : Oxide::Language::Nodes::Document
      @document ||= parse(query_string)
    end

    private def parse(query_string)
      Oxide::Language::Parser.parse(query_string)
    end
  end
end