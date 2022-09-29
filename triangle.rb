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
  # WRITE THIS CODE
  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError, "side == 0"
  end

  max_element = [a, b, c].max
  other_elements = [a, b, c]
  other_elements.delete_at([a, b, c].index(max_element))

  if max_element >= other_elements[0] + other_elements[1]
    raise TriangleError, "invalid line lengths"
  end

  if a == b && b == c
    return :equilateral
  elsif a != b && a != c && b != c
    return :scalene
  else
    return :isosceles
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
