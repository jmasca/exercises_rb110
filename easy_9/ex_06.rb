system 'clear'
# easy 9 - exercise 06

# PROBLEM #

#   - Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

#   - You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

#   input: two Integer arguments
#   output: Array

#   explicit:
#     - create a method that accepts two integer arguments
#     - first integer -
#         - a count, the number of elements in the output Array
#     - second integer -
#         - the first number of a sequence that the method creates
#     - the sequence -
#         - multiples of the starting number (2, 4, 6, 8)
#     - count value will always be greater than or equal to 0
#     - starting number can be any integer value
#     - a count of 0 should return an empty array

#   implicit:
#     - n/a

# EXAMPLES #

#   - 5, 1 => [1, 2, 3, 4, 5]
#   - 4, -7 => [-7, -14, -21, -28]
#   - 3, 0 => [0, 0, 0]
#   - 0, 1000000 => []

# DATA STRUCTURES #

#   - Integers (a count of elements, a starting number)
#   - Array (a sequence of multiples of the starting number, up to the count)

# ALGORITHM #

#   - define a method named `sequence` that accepts two integer arguments
#   - the integer arguments will be named `count` and `starting_num`
#   - return an empty array if `count` is equal to 0
#   - initialize an array named `sequence` with `starting_num` as first element
#   - populate the array with:
#       - each subsequent element is the previous element plus `starting_num`
#       - the array is populated when its size is equal to `count`
#   - return the array `sequence`

# CODE #

def sequence(count, starting_num)
=begin
  return [] if count == 0

  sequence = [starting_num]

=begin
# option 1:
  loop do
    sequence << sequence[-1] + starting_num
    break if sequence.size == count
  end
=end

=begin
# option 2:
  (count - 1).times { sequence << sequence[-1] + starting_num }
=end

#  sequence

# option 3:
  (1..count).map { |idx| idx * starting_num }
end

p sequence(5, 1)
puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts

p sequence(4, -7)
puts sequence(4, -7) == [-7, -14, -21, -28]
puts

p sequence(3, 0)
puts sequence(3, 0) == [0, 0, 0]
puts

p sequence(0, 1000000)
puts sequence(0, 1000000) == []
puts puts
