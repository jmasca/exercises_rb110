# ex_08.rb
system 'clear'
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that takes two Array arguments in which each Array
#     contains a list of numbers, and returns a new Array that contains the
#     product of each pair of numbers from the arguments that have the same
#     index.

#   - You may assume that the arguments contain the same number of elements.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - given two arrays, which are of equal lengths and contain only numbers,
#     multiply the pairs of numbers in each respective index and store the
#     result in the corresponding index of a new array. return the new array.

#   input: Arrays (2)
#   output: Array (1)

#   rules:
#     explicit:
#       - the two arrays are the same length
#       - the two arrays contain only numbers
#       - multiply index 0 of array 1 by index 0 of array 2
#         - this is stored at index 0 of array 3 to be returned

# --- EXAMPLES --- #

#   [3, 5, 7], [9, 10, 11]) == [27, 50, 77]
#   3 * 9 = [27]
#   5 * 10 = [27, 50]
#   7 * 11 = [27, 50, 77]

# --- DATA STRUCTURES --- #

#   - Array

# --- ALGORITHM --- #

#   - initialize a new empty array to hold our results
#   - multiply index 0 of array 1 by index 0 of array 2
#     - store the result at index 0 of our new array
#   - repeat until all elements have been multiplied and added to the new array

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:

def multiply_list(list1, list2)
  products = []
  (0...list1.size).each { |idx| products << (list1[idx] * list2[idx]) }
  products
end

# further exploration: (using Array#zip, Array#map, and Array#inject)

def multiply_list1(list1, list2)
  list1.zip(list2).map { |sub_arr| sub_arr.inject(:*) }
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p multiply_list([3, 5, 7], [9, 10, 11])
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts

p multiply_list1([3, 5, 7], [9, 10, 11])
p multiply_list1([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts

# --------------------------------------------------------------------------- #
