# ex_07.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that takes an Array as an argument, and returns two
#     Arrays (as a pair of nested Arrays) that contain the first half and
#     second half of the original Array, respectively.

#     If the original array contains an odd number of elements, the middle
#     element should be placed in the first half Array.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - take an array and create a new nested array that contains:
#       - an array with the first half of the original arrays elements
#       - a second array with the second half of the elements

#   input: array
#   output: array

#   rules:
#     explicit:
#       - the array returned should be a nested array with two array elements
#       - if an odd number of elements, middle element goes to array 1
#     implicit:
#       - single element arrays still return a nested array:
#           - the first nested array has the element in an array
#           - the second nested array should be empty
#       - an empty array returns a nested array with two empty arrays

# --- EXAMPLES --- #

# [1, 5, 2, 4, 3] == [[1, 5, 2], [4, 3]]
# [] => [[1, 5, 2]] => [[1, 5, 2], [4, 3]]

# --- DATA STRUCTURES --- #

#   - Array / Nested Array

# --- ALGORITHM --- #

#   - initialize a variable to the middle index of the given array
#       - Note on middle index and array size:
#           - array size is even: 
#               - first array gets everything up to the index of size / 2
#           - array size is odd:
#               - first array gets everything INCLUDING the index of size / 2
#   - create an array slice using the middle index
#   - store each half in its own array
#   - put both arrays into an outer array

# --------------------------------------------------------------------------- #

# --- CODE --- #

# my solution

def halvsies1(arr)
  arr_size = arr.size
  mid_idx = (arr_size / 2)

  if arr.size.even?
    first_array = arr.slice(0...mid_idx)
    second_array = arr.slice(mid_idx...arr_size)
  else
    first_array = arr.slice(0..mid_idx)
    second_array = arr.slice((mid_idx + 1)...arr_size)
  end
  [first_array, second_array]
end

# solution using the Float#ceil method
# note the 2.0 division and not 2 so that a float is returned for #ceil 
# #ceil will always round up to the next whole value if theres a decimal > 0

def halvsies2(arr)
  mid_idx = (arr.size / 2.0).ceil
  first_array = arr.slice(0...mid_idx)
  second_array = arr.slice(mid_idx...arr.size)
  [first_array, second_array]
end

# solution using the Enumerable#partition method
# first array from partition is the truthy elements from the block
# second array from partition is the false elements from the block

def halvsies3(arr)
  mid_idx = (arr.size / 2.0).ceil
  arr.partition { |e| arr.index(e) < mid_idx }
end


# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p halvsies1([1, 2, 3, 4]) 
p halvsies1([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies1([1, 5, 2, 4, 3])
p halvsies1([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies1([5]) == [[5], []]
p halvsies1([]) == [[], []]
puts

p halvsies2([1, 2, 3, 4]) 
p halvsies2([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies2([1, 5, 2, 4, 3])
p halvsies2([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies2([5]) == [[5], []]
p halvsies2([]) == [[], []]
puts

p halvsies3([1, 2, 3, 4]) 
p halvsies3([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies3([1, 5, 2, 4, 3])
p halvsies3([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies3([5]) == [[5], []]
p halvsies3([]) == [[], []]
puts

# --------------------------------------------------------------------------- #
