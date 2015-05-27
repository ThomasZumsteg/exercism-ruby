class Triangle
  attr_reader :kind

  def initialize(a,b,c)
    a, b, c = [a,b,c].sort

    raise TriangleError.new("Invalid Triangle") if a <= 0 or a + b <= c
    
    @kind = if a == b and b == c
      :equilateral
    elsif a == b or b == c
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end