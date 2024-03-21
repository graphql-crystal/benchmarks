module Oxide
  class Argument
    alias DefaultValue = String | Int32 | Float32 | Bool | Nil | Array(DefaultValue) | Hash(String, DefaultValue)

    getter type : Oxide::Type
    getter description : String? = nil
    getter default_value : DefaultValue
    getter? has_default_value : Bool
    getter deprecation_reason : String?
    property applied_directives : Array(AppliedDirective)

    def initialize(@type : Oxide::Type, @deprecation_reason = nil, @applied_directives : Array(AppliedDirective) = [] of AppliedDirective)
      @default_value = nil
      @has_default_value = false
      @description = nil
    end

    def initialize(@type : Oxide::Type, @description, @deprecation_reason = nil, @applied_directives : Array(AppliedDirective) = [] of AppliedDirective)
      @default_value = nil
      @has_default_value = false
    end

    def initialize(@type, @default_value, @deprecation_reason = nil, @applied_directives : Array(AppliedDirective) = [] of AppliedDirective)
      @has_default_value = true
      @description = nil
    end

    def initialize(@type, @default_value, @description, @deprecation_reason = nil, @applied_directives : Array(AppliedDirective) = [] of AppliedDirective)
      @has_default_value = true
    end

    def deprecated?
      !deprecation_reason.nil?
    end
  end
end
