system 'clear'
# medium 2 - exercise 6

# PROBLEM #

#   - Write a method that takes the 3 angles of a triangle as arguments, and
#     returns a symbol :right, :acute, :obtuse, or :invalid depending on
#     whether the triangle is a right, acute, obtuse, or invalid triangle.

#   - A triangle is classified as follows:
#     right -> One angle of the triangle is a right angle (90 degrees)
#     acute -> All 3 angles of the triangle are less than 90 degrees
#     obtuse -> One angle is greater than 90 degrees.

#   - To be a valid triangle, the sum of the angles must be exactly 180
#     degrees, and all angles must be greater than 0: if either of these
#     conditions is not satisfied, the triangle is invalid.

#   - You may assume integer valued angles so you don't have to worry about
#     floating point errors. You may also assume that the arguments are
#     specified in degrees.

#   input: 3 Integers (representing degrees of the angles of a triangle)
#   output: Symbol (:right, :acute, :obtuse, :invalid)

#   rules:
#     explicit:
#       - method takes 3 arguments that are all Integers
#       - the return value will be a symbol:
#           - the symbols represent the triangle being:
#           - :right, :acute, :obtuse, or :invalid
#         - :right
#           - one of the values will be 90
#         - :acute
#           - all 3 values are less than 90
#         - :obtuse
#           - one of the values is greater than 90
#       - to be a valid triangle:
#         - the sum of all values must be equal to 180 exactly
#         - all values must be greater than 0
#         - if either above is false, return :invalid
#       - ALL values will be Integers (no floating point numbers)
#       - the arguments are specified in degrees

# EXAMPLES #

#   30, 90, 60 == :right    (one 90 degree value)
#   50, 50, 50 == :invalid  (sum of values does not equal 180)

# DATA STRUCTURES #

#   - Integer
#   - Symbol

# ALGORITHM #

#   - define a method named `triangle` that accepts 3 Integer arguments
#     - the arguments will be named, `angle_1`, `angle_2`, and `angle_3`
#   - assign all 3 arguments to an array named `angles`
#   - return :invalid if any value is less than or equal to 0
#   - return :invalid if the sum of the 3 values does not equal 180

#   - use a case statement to determine the following:
#       - one value is equal to 90, return :right
#       - all values are less than 90, return :acute
#       - one value is greater than 90, return :obtuse

# CODE #

def triangle(angle_1, angle_2, angle_3)
  angles = [angle_1, angle_2, angle_3]
  return :invalid if angles.include?(0) || angles.sum != 180

  case
  when angles.any?(90) then :right
  when angles.all? { |angle| angle < 90 } then :acute
  else :obtuse
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
puts
