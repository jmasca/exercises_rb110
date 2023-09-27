system 'clear'
# easy 9 - exercise 11

# PROBLEM #

#   - Write a method that returns an Array that contains every other element of
#     an Array that is passed in as an argument.

#   - The values in the returned list should be those values that are in the
#     1st, 3rd, 5th, and so on elements of the argument Array.

#   input: Array (could be empty or contain any type/number of elements)
#   output: Array (containing every other element from the input Array)

#   explicit:
#     - write a method that accepts an Array argument
#     - create a new array that has every other element from the given Array
#     - return the new array
#   implicit:
#     - beginning with the first element is beginning at index 0
#     - the new array contains all even numbered indices (0, 2, 4, etc)
#     - empty arrays return empty arrays
#     - single element arrays return single element arrays

# EXAMPLES #

#   - [2, 3, 4, 5, 6] => [2, 4, 6]
#   - [] => []
#   - [123] => [123]

# DATA STRUCTURES #

#   - Arrays

# ALGORITHM #

#   - define a method named `oddities` that accepts an Array argument `arr`
#   - initialize an empty array named `every_other`
#   - iterate through the array with the element and its index
#     - if the index is even, add the element to `every_other`
#     - otherwise, skip the element
#   - return `every_other`

# CODE #

def oddities(arr)
  every_other = []
  arr.each_with_index { |e, idx| idx.even? ? every_other << e : next }
  every_other
end

p oddities([2, 3, 4, 5, 6])
puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts
p oddities([1, 2, 3, 4, 5, 6])
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts
p oddities(['abc', 'def'])
puts oddities(['abc', 'def']) == ['abc']
puts
p oddities([123])
puts oddities([123]) == [123]
puts
p oddities([])
puts oddities([]) == []
puts
p oddities([1, 2, 3, 4, 1])
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
puts puts
