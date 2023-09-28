system 'clear'
# medium 1 - exercise 3

# PROBLEM #

#   - If you take a number like 735291, and rotate it to the left, you get
#     352917.
#   - If you now keep the first digit fixed in place, and rotate the remaining
#     digits, you get 329175.
#   - Keep the first 2 digits fixed in place and rotate again to 321759.
#   - Keep the first 3 digits fixed in place and rotate again to get 321597.
#   - Finally, keep the first 4 digits fixed in place and rotate the final 2
#     digits to get 321579.
#   - The resulting number is called the maximum rotation of the original
#     number.

#   - Write a method that takes an integer as argument, and returns the maximum
#     rotation of that argument. You can (and probably should) use the
#     rotate_rightmost_digits method from the previous exercise.

#   - Note that you do not have to handle multiple 0s.

#   input: integer (representing a positive number without multiple 0's)
#   output: integer (representing the maximum rotation of the original number)

#   explicit:
#     - accept an integer argument into our method
#     - utilize our methods from ex 01 and ex 02
#     - there will NOT be multiple 0's in any given integer
#     - return the maximum rotation of the given integer argument
#     - maximum rotation rules -
#       - given 735291 -
#           - first rotation:
#               - first digit to the end of the number => 352917
#           - second rotation:
#               - the new first digit remains fixed (3)
#               - rotate the second digit to the end of the number => 329175
#           - third rotation:
#               - the new first two digits remain fixed
#               - rotated the third digit to the end of the number =? 321759
#           - each consecutive rotation holds one more number in place and
#             rotates the remaining digits until all have been rotated
#     - return the maximum rotated integer

#   implicit:
#     - leading zero's are dropped if there are any on final integer
#     - single elements stay the same
#     - two elements swap places

# EXAMPLES #

#   -> 105 => 051 => 15
#   -> 735291 => 352917 => 329175 => 321759 => 321597 => 321579

# DATA STRUCTURES #

#   - Integer
#   - Array for rotating the integer

# ALGORITHM #

#   - accept an integer argument `num` into our method `max_rotation`
#   - store the individual chars into an array called `digits`
#   - initialize a variable to 0 to represent the index of `fixed_digits`
#   - call the method `rotate_array` and pass in `digits`
#   - begin iterating the digits until `fixed_digits` is 2 less than
#     the size of the `digits` array
#     - with each iteration:
#       - slice `digits` from (`fixed_digits` + 1) to the end of `digits`
#       - pass this slice to the `rotate_array` method
#       - combine the returned array with the beginning digits that were held
#       - increment `fixed_digits` by 1
#   - after all iterations and rotations are complete:
#     - combine the chars together and return the integer value

#   - OR -
#     - accept an integer argument `original_num` into our method `max_rotation`
#     - store the size of the num into a variable named `left_to_rotate`
#     - initialize an integer to 0 named `rotated_num`
#     - pass `original_num` and `left_to_rotate` into `rotate_rightmost_digits`
#       - assign the returned valued to `rotated_num`
#     - subtract 1 from `left_to_rotate`
#     - repeat the process until `left_to_rotate` < 2
#     - return `rotated_num`

# CODE #

def rotate_array(arr)
  arr[1..-1].push(arr[0])
end

def rotate_rightmost_digits(num, digits_to_rotate)
  num_arr = num.to_s.chars
  num_arr[-digits_to_rotate..-1] = rotate_array(num_arr[-digits_to_rotate..-1])
  num_arr.join.to_i
end

=begin
# first attempt #
def max_rotation(original_num)
  left_to_rotate = original_num.to_s.size
  rotated_num = original_num
  while left_to_rotate > 1
    rotated_num = rotate_rightmost_digits(rotated_num, left_to_rotate)
    left_to_rotate -= 1
  end
  rotated_num
end
=end

# shorter solution - LS Inspired #
def max_rotation(number)
  digits_to_rotate = number.to_s.size
  digits_to_rotate.downto(2) { |n| number = rotate_rightmost_digits(number, n) }
  number
end

puts max_rotation(735291)
puts max_rotation(735291) == 321579
puts
puts max_rotation(3)
puts max_rotation(3) == 3
puts
puts max_rotation(35)
puts max_rotation(35) == 53
puts
puts max_rotation(105)
puts max_rotation(105) == 15 # the leading zero gets dropped
puts
puts max_rotation(8_703_529_146)
puts max_rotation(8_703_529_146) == 7_321_609_845
puts puts
