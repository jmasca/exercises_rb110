system 'clear'
# easy 9 - exercise 03

# PROBLEM #

#   - Write a method that takes an integer argument, and returns an Array of
#     all integers, in sequence, between 1 and the argument.

#   - You may assume that the argument will always be a valid integer that is
#     greater than 0.

#   input: integer
#   output: Array (of all integers from 1 up to the input integer)

#   explicit:
#     - accepting an integer argument
#     - returning an array
#         - the Array being returned will consist of:
#             - all integers from 1 up to the integer argument (in sequence)
#     - argument will always be a positive integer greater than 0

#   implicit:
#     - 1 is still returned as 1, but inside of an array

# EXAMPLES #

#   - 5 => [1, 2, 3, 4, 5]
#   - 3 => [1, 2, 3]
#   - 1 => [1]

# DATA STRUCTURES #

#   - integer
#   - array (holding all integers from 1 up to the input integer)

# ALGORITHM #

#   - accept an integer argument named `num`
#   - initialize an empty array named `one_to_num`
#   - fill `one_to_num` with integer values from 1 up to `num`
#   - return `one_to_num`

# CODE #

def sequence(num)
  Array(1..num)
end

p sequence(5)
puts sequence(5) == [1, 2, 3, 4, 5]
puts
p sequence(3)
puts sequence(3) == [1, 2, 3]
puts
p sequence(1)
puts sequence(1) == [1]
puts