module Oxide
  record Location, line : Int32, column : Int32 do
    def to_json(builder : JSON::Builder)
      builder.object do
        builder.field "line", line
        builder.field "column", column
      end
    end

    def to_h
      { "line" => line, "column" => column }
    end

    def_equals_and_hash line, column
  end

  class ParseException < Exception
    property line_number : Int32?
    property column_number : Int32?

    def initialize(message, @line_number, @column_number)
      super(message)
    end
  end

  class Error < Exception
    property locations : Array(Location) = [] of Location

    def initialize(message, @locations = [] of Location)
      super(message)
    end

    def to_json(builder : JSON::Builder)
      builder.object do
        builder.field "message", message
        builder.field "locations" do
          builder.array do
            locations.each do |location|
              location.to_json(builder)
            end
          end
        end
      end
    end

    def to_h
      { "message" => message, "locations" => locations.map(&.to_h) }
    end

    def_equals_and_hash @message, @locations
  end

  class InputCoercionError < Error
  end

  class InvalidOperationError < Error
  end

  class FieldError < Error
  end

  class NullError < FieldError
  end
end