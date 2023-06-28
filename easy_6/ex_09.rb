# ex_09.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method named include? that takes an Array and a search value as
#     arguments. This method should return true if the search value is in the
#     array, false if it is not.

#     You may not use the `Array#include?` method in your solution.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - from a given array and a given search value, return true or false whether
#     the search value is in the given array

#   input: `array`, `value` (object: integer, nil)
#   output: `boolean`

# --- EXAMPLES --- #

#   [1,2,3,4,5] <- 3
#   3 -> 1, 3 -> 2, 3 -> 3 => true

#   [1,2,3,4,5] <- 6
#   6 -> 1, 6 -> 2, 6 -> 3, 6 -> 4, 6 -> 5 => false

# --- DATA STRUCTURES --- #

#   - Array
#   - object (int, nil)

# --- ALGORITHM --- #

#   - iterate each element of the array
#     - return true if the element equals the given value, false otherwise

# --------------------------------------------------------------------------- #

# --- CODE --- #

# my solution:

def include1?(arr, val)
  arr.each { |e| return true if e == val }
  false
end

# slightly easier solution:

def include2?(arr, val)
  !!arr.index(val)
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p include1?([1,2,3,4,5], 3) == true
p include1?([1,2,3,4,5], 6) == false
p include1?([], 3) == false
p include1?([nil], nil) == true
p include1?([], nil) == false
puts 

p include2?([1,2,3,4,5], 3) == true
p include2?([1,2,3,4,5], 6) == false
p include2?([], 3) == false
p include2?([nil], nil) == true
p include2?([], nil) == false

# --------------------------------------------------------------------------- #
