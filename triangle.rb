# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  case
  when a <= 0 || b <= 0 || c <= 0 then raise TriangleError, "One or more sides are equal 0"
  when a + b <= c || a + c <= b || b + c <= a then raise TriangleError, " Sum of 2 sides less than 3rd"
  end


  case
  when a == b && a == c then :equilateral
  when a == b || a == c || b == c then :isosceles
  else :scalene
  end
  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
