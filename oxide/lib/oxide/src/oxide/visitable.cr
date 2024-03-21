module Oxide
  module Visitable
    def accept(visitor : Visitor)
      visitor.visit(self)
    end
  end
end
