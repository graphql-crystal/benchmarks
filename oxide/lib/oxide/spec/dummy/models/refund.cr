class Refund
  property id : Int32
  property status : String
  property partial : Bool
  property reference : String

  def initialize(@id, @status, @reference, @partial)
  end
end