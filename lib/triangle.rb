class Triangle

  attr_reader :a, :b, :c, :sorted_sides
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sorted_sides = [a, b, c].sort
  end

  def kind
    if @a > 0 && @b > 0 && @c > 0
      if @sorted_sides[0] + @sorted_sides[1] > @sorted_sides[2]
        if @a == @b && @a == @c
          :equilateral
        elsif @a == @b || @a == @c || @b == @c
          :isosceles
        else
          :scalene
        end
      else
        raise TriangleError, "Triangle Inequality"
      end
    else
      raise TriangleError, "Non positive values"
    end
  end

  class TriangleError < StandardError
  end


end
