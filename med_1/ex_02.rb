system 'clear'
# medium 1 - exercise 2

# PROBLEM #

#   - Write a method that can rotate the last n digits of a number.
#   - Note that rotating just 1 digit results in the original number being
#     returned.
#   - You may use the rotate_array method from the previous exercise if you
#     want. (Recommended!)
#   - You may assume that n is always a positive integer.

#   input: Integer, Integer
#   output: Integer

# EXAMPLES #

#   (735291, 1) == 735291
#   (735291, 3) == 735912

# DATA STRUCTURES #

#   - Arrays

# ALGORITHM #

#   - accept two integer arguments into our method `rotate_rightmost_digits`
#   - the parameter names will be `num` and `digits_to_rotate`
#   - using the `digits_to_rotate` integer, use it as a negative index to
#     slice the number from the given digit to the end of the num
#   - pass this slice into our method from earlier `rotate_array`
#   - reassign the returned array to the second half of `num_arr`
#   - return the rotated integer

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
# a random attempt before utilizing slicing #
def rotate_rightmost_digits(int, n_digits)
  int_arr = int.to_s.chars
  rotate_array(int_arr.unshift(int_arr.delete_at(- n_digits))).join.to_i

#  tmp_ele = int_arr.delete_at(- n_digits)
#  rotate_array(int_arr.unshift(tmp_ele)).join.to_i
end
=end

p rotate_rightmost_digits(735291, 2)
puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
puts

x = 735291
puts rotate_rightmost_digits(x, 6) == 352917
puts x == 735291
puts puts
