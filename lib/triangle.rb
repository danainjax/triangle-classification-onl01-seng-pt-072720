# class Triangle

#   attr_accessor :s1, :s2, :s3

#   def initialize(s1, s2, s3)
#     @s1 = s1
#     @s2 = s2
#     @s3 = s3
#   end

#   def kind

# if s1 == s2 || s2 == s3
#     :equilateral
  
# elsif s1 <= 1 || s2 <= s1
  
#     :isosceles
    
#     :scalene


#   end
# end

#   class TriangleError < StandardError
#     # triangle error code
#   end
# end
class Triangle
  attr_accessor :sides
  
  @sides = []
  
  def initialize (side1, side2, side3)
    @sides = [side1, side2, side3]
    @sides.sort!
  end
  
  def kind
    if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    
  end
end

# - Give your Triangles an instance method, `kind` that returns, as a symbol, its
#   type. The valid types are:

# 1.  `:equilateral`

# 2.  `:isosceles`

# 3.  `:scalene`

# - The `kind` method should raise a custom error, `TriangleError` if the triangle
#   is invalid. Check out the hint below to understand what makes a triangle
#   invalid. Write a custom error class, `TriangleError` and inherit it from
#   `StandardError`. This custom error class should be defined in the same file as
#   the `Triangle` class, inside the `Triangle` class definition. 




  

