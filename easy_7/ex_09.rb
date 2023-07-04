# ex_09.rb
system 'clear'
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that takes two Array arguments in which each Array
#     contains a list of numbers, and returns a new Array that contains the
#     product of every pair of numbers that can be formed between the elements
#     of the two Arrays.

#   - The results should be sorted by increasing value.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - given two arrays that have a list of numbers, multiply all possible
#     combination of numbers between the two lists of numbers. Sort the numbers
#     by increasing value and return the results in a new array.

#   input: Two Arrays
#   output: One Array

#   rules:
#     explicit:
#       - two arrays will each contain a list of numbers
#       - must use all combination of numbers
#       - returning a new array
#       - sort the new array by increasing value before returning it
#     implicit:
#       - 

# --- EXAMPLES --- #

#   [2, 4], [4, 3, 1, 2]
#   2 * 4 = 8 -> [8]
#   2 * 3 = 6 -> [8, 6]
#   2 * 1 = 2 -> [8, 6, 2]
#   2 * 2 = 4 -> [8, 6, 2, 4]
#   4 * 4 = 16 -> [8, 6, 2, 4, 16]
# ...
#   [8, 6, 2, 4, 16..] -> [2, 4, 6, 8, 16..] <- return

# --- DATA STRUCTURES --- #

#   - Array

# --- ALGORITHM --- #

#   - initialize a new, empty array to hold our product results
#   1 - iterate the first array and begin with the first index:
#     2 - iterate the second array (beginning at its first index):
#       3 - multiply the number from the first array by the number in the
#           second array and store the result in a new array
#         - repeat steps 2 and 3 until all numbers multiplied from second arr
#       - repeat steps 1, 2, and 3 until all numbers multiplied from first arr
#     - sort the new array by increasing value
#     - return the new array

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:

def multiply_all_pairs(pair1, pair2)
  products = []
  pair1.each { |num1| pair2.each { |num2| products << num1 * num2 }}
  products.sort
end

# solution using #product, #map, and #inject
def multiply_all_pairs1(pair1, pair2)
  pair1.product(pair2).map { |nums| nums.inject(:*) }.sort
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
puts

p multiply_all_pairs1([2, 4], [4, 3, 1, 2])
p multiply_all_pairs1([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
puts

# --------------------------------------------------------------------------- #
