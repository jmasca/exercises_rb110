system 'clear'
# easy 8 - exercise 10

# PROBLEM #
#   - Write a method that takes one argument, an array containing integers, and
#     returns the average of all numbers in the array. The array will never be
#     empty and the numbers will always be positive integers. Your result
#     should also be an integer.

#   input: Array contain integers
#   output: integer representing the average of all numbers in the input array

#   explicit:
#     - the given array will contain integers
#     - the array will always consist of at least 1 positive integer
#     - result should be given as an integer
#     - the average is returned (not displayed)
#   implicit:
#     - n/a

# EXAMPLES #
#   - [1, 6]) == 3      # integer division: (1 + 6) / 2 -> 3
#   - [1, 5, 87, 45, 8, 8]) == 25
#   - [9, 47, 23, 95, 16, 52]) == 40

# DATA STRUCTURE #
#   - Array
#   - Integer

# ALGORITHM #
#   - obtain an array consisting of at least 1 positive integer `nums`
#   - initialize a variable `total` to hold the running total
#   - iterate all integers and add them together, store running total in `total`
#   - divide `total` by the size of the array
#   - return the average

# CODE #

=begin
# algorithm code:
def average(nums)
  total = 0
  nums.each { |num| total += num }
  total / nums.size
end
=end

# Ruby Sugar:
def average(nums)
  nums.inject(:+) / nums.size
end

# Further Exploration:
#   simply add `.to_f` to convert the denominator to a float before dividing
#   `nums.inject(:+) / nums.size.to_f`

puts average([1, 6])
puts average([1, 6]) == 3     # integer division: (1 + 6) / 2 -> 3
puts
puts average([1, 5, 87, 45, 8, 8])
puts average([1, 5, 87, 45, 8, 8]) == 25
puts
puts average([9, 47, 23, 95, 16, 52])
puts average([9, 47, 23, 95, 16, 52]) == 40
puts puts
