require "../../spec_helper"

def build_list_type(of_type : Oxide::Type)
  Oxide::Types::ListType.new(of_type: of_type)
end

describe Oxide::Types::ListType do
  describe "#coerce" do
    # [Int]	[1, 2, 3]	[1, 2, 3]
    # [Int]	[1, "b", true]	Error: Incorrect item value
    # [Int]	1	[1]
    # [Int]	null	null
    it "coerces a list according to spec" do
      int_list = build_list_type(Oxide::Types::IntType.new)

      int_list.coerce([1, 2, 3]).should eq([1, 2, 3])

      expect_raises(Oxide::InputCoercionError) do
        int_list.coerce([1, "b", true])
      end

      int_list.coerce(1).should eq([1])
      int_list.coerce(nil).should eq(nil)
    end

    # [[Int]]	[[1], [2, 3]]	[[1], [2, 3]
    # [[Int]]	[1, 2, 3]	Error: Incorrect item value
    # [[Int]]	1	[[1]]
    # [[Int]]	null	null
    it "coerces a list of lists according to spec" do
      int_list = build_list_type(build_list_type(Oxide::Types::IntType.new))

      int_list.coerce([1, [2, 3]]).should eq([[1], [2, 3]])
      int_list.coerce(1).should eq([[1]])
      int_list.coerce(nil).should eq(nil)
    end
  end
end
