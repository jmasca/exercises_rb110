# ex_04.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:
#   - Write a method that takes an Array as an argument, and reverses its
#     elements in place; that is, mutate the Array passed into this method.
#     The return value should be the same Array object.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #
#   - reverse the elements in an array by mutating the array directly

#   input: array
#   output: array (the same array, but reversed)

#   rules:
#     - explicit:
#         - You may not use `Array#reverse` or `Array#reverse!`
#         - the array object is mutated directly
#         - the return value is the same Array object
#     - implicit:
#         - the method works on elements specifically
#         - the method should work on empty arrays

# --- EXAMPLES --- #
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1] # true
# list == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true
# 
# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true
# 
# list = ['abc']
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true
# 
# list = []
# reverse!(list) == [] # true
# list == [] # true

# --- DATA STRUCTURES --- #
#   - Array

# --- ALGORITHM --- #     **** REDO THIS ALGORITHM BECAUSE ITS INCORRECT ****

#   - given an array named `arr`:
#     - remove and store the last element of the array
#     - starting at the first index (current_index = 0):
#       - insert the element that was removed to the current_index
#       - increment the current_index by 1
#       - repeat until all elements are swapped



# --------------------------------------------------------------------------- #

# --- CODE --- #

# No Ruby specific Array methods #

def reverse!(arr)
  pos_idx = 0
  neg_idx = -1
  iterations = arr.size / 2

  iterations.times do
    tmp = arr[pos_idx]
    arr[pos_idx], arr[neg_idx] = arr[neg_idx], tmp

    pos_idx += 1
    neg_idx -= 1
  end
  arr
end

# Ruby specific Array methods #
=begin
def reverse!(arr)
  neg_idx = 0
  arr_copy = arr.dup

  arr.map! do
    neg_idx -= 1
    arr_copy[neg_idx]
  end
end
=end

# --------------------------------------------------------------------------- #

list = [1,2,3,4]
result = reverse!(list)
p result
p result == [4, 3, 2, 1] # true
puts
p list
p list == [4, 3, 2, 1] # true
puts
puts "#{result.object_id} | #{list.object_id}"
p list.object_id == result.object_id # true
puts

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true
puts

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true
puts

list = []
p reverse!(list) == [] # true
p list == [] # true
puts

# --------------------------------------------------------------------------- #
