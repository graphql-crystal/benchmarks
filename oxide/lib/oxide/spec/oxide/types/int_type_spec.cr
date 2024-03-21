require "../../spec_helper"

def build_int_type
  Oxide::Types::IntType.new
end

describe Oxide::Types::IntType do
  describe "#coerce" do
    it "accepts Int32 values" do
      build_int_type.coerce(1234567i32).should eq(1234567i32)
    end

    it "accepts Int64 values if converable to Int32" do
      build_int_type.coerce(1234567i64).should eq(1234567)
    end

    it "raises if Int64 value is out of Int32 bounds" do
      expect_raises(Oxide::InputCoercionError) do
        build_int_type.coerce(Int32::MAX.to_i64 + 1)
      end

      expect_raises(Oxide::InputCoercionError) do
        build_int_type.coerce(Int32::MIN.to_i64 - 1)
      end
    end

    it "raises exception on non integer type" do
      expect_raises(Oxide::InputCoercionError) do
        build_int_type.coerce("2134543")
      end

      expect_raises(Oxide::InputCoercionError) do
        build_int_type.coerce(23.4)
      end
    end
  end
end
