=begin
PROBLEM:

Input: three integers
Output: String

Rules/Requirements
determine whether a triangle is equilateral, isosceles, or scalene
equilateral triangles has all three sides the same length
isosceles triangle has two sides of the same length
scalene triangle has all sides different lengths
all sides must be greater than 0
the sum of the lengths of any two sides must be greater than the third side

ALGORITHM:

=> Goal: return the name of triangle as a string from three input integers.

=> Steps:
create a triangle class
create a constructor that takes 3 parameters
store input arguments in instance variables
raise an error if any side is less than or equal to zero

== if triangel valid method ==
if side 1 plus side 2 is greater than side 3
  and side 2 plus side 3 is greater than side 1
  and side 1 plus side 3 is greater than side 2
  return true

  === validate input ==
  all sides must be greater in length than 0

== kind method ==
if all three sides are equal
  return 'equilateral'
elsif two sides are equal
  return 'isosceles'
else
  'scalene'
end
=end

class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    raise ArgumentError if !validate_input || !triangle_valid?
  end

  def validate_input
    [@side1, @side2, @side3].any? { |side| side > 0 }
  end

  def triangle_valid?
    return true if @side1 + @side2 > @side3 &&
                   @side2 + @side3 > @side1 &&
                   @side3 + @side1 > @side2
  end

  def kind
    if (@side1 + @side2) / 2 == @side3
      'equilateral'
    elsif @side1 == @side2 || @side1 == @side3 ||
          @side2 == @side3
      'isosceles'
    else
      'scalene'
    end
  end
end

triangle1 = Triangle.new(5, 4, 6)
p triangle1.kind # => equilateral
