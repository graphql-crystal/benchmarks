class Charge
  property id : Int32
  property status : String?
  property reference : String

  def initialize(@id, @reference, @status = nil)
  end
end