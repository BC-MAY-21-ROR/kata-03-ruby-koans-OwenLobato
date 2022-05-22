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
  sorted_lenghts = [a, b, c].sort
  raise TriangleError if (sorted_lenghts[0] + sorted_lenghts[1] <= sorted_lenghts[2])
  raise TriangleError if (a <= 0 || b <= 0 || a <= 0)
  return :equilateral if (a == b) && (b == c) && (a == c)
  return :isosceles if (a == b) || (b == c) || (a == c)
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
