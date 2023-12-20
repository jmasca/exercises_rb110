system 'clear'
# medium 2 - exercise 5

# PROBLEM #

#   - Write a method that takes the lengths of the 3 sides of a triangle as
#     arguments, and returns a symbol :equilateral, :isosceles, :scalene, or
#     :invalid depending on whether the triangle is equilateral, isosceles,
#     scalene, or invalid.

#   - A triangle is classified as follows:
#       - equilateral -> All 3 sides are of equal length
#       - isosceles -> 2 sides are of equal length, while the 3rd is different
#       - scalene -> All 3 sides are of different length

#   - To be a valid triangle, the sum of the lengths of the two shortest sides
#     must be greater than the length of the longest side, and all sides must
#     have lengths greater than 0: if either of these conditions is not
#     satisfied, the triangle is invalid.

#   input: 3 Integers/Floats (representing each side of a triangle)
#   output: Symbol (representing the type of triangle, or invalid)

#   rules:
#     explicit:
#       - the method accepts 3 Integer/Float values
#       - all values must be greater than 0
#       - summing the two shortest sides must be greater than the longest side
#       - if either of the above two rules are false, its an invalid triangle
#       - if all 3 values are equal, its equilateral
#       - if 2 values are equal with a different 3rd value, its isosceles
#       - if all 3 values are different, its scalene
#       - the return value must be a Symbol

# EXAMPLES #

#   3, 3, 3 == :equilateral
#   3, 1, 1 == :invalid   (1 + 1 is not greater than 3)

# DATA STRUCTURES #

#   - Integer
#   - Float
#   - Symbol

# ALGORITHM #

#   - define a method named `triangle`
#   - the method accepts 3 Integer/Float arguments, `side_1`, `side_2`, `side_3`
#   - assign the 3 arguments to an array `sides`
#   - sort the array in ascending order
#   - return :invalid if any value is 0
#   - if the sum of the first 2 values are less than the 3rd, return :invalid
#   - use a case statement for the following:
#     - count the number of unique values:
#       - if there's only 1 unique value, return :equilateral
#       - if there're 2 unique values, return :isosceles
#       - otherwise, return :scalene

# CODE #

def triangle(side_1, side_2, side_3)
  sides = [side_1, side_2, side_3].sort
  return :invalid if sides.any?(0) || ((sides[0] + sides[1]) < sides[2])

  case sides.uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  else :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
puts
