system 'clear'
# medium 1 - exercise 1

# PROBLEM #

#   - Write a method that rotates an array by moving the first element to the
#     end of the array.
#   - The original array should not be modified.
#   - Do not use the method Array#rotate or Array#rotate! for your
#     implementation.

#   input: array
#   output: array (a new, rotated version of the original)

#   explicit:
#     - original array should NOT be modified
#     - write a method that accepts an array
#     - rotating the array:
#         - first element becomes the last element
#     - cannot use Array#rotate(!)

#   implicit:
#     - there is no change with arrays of size 1 or less

# EXAMPLES #

#   - [7, 3, 5, 2, 9, 1] => [3, 5, 2, 9, 1, 7]

# DATA STRUCTURES #

#   - Array (original given array)
#   - Array (new, rotated version of the given array)

# ALGORITHM #

#   - define a method named `rotate_array` that takes an array argument `arr`
#   - initialize an empty array named `rotated_arr` 
#   - beginning at the last element of `arr` store its value into `rotated_arr`
#     - continue working backwards through `arr`
#     - place each consecutive element into `rotated_arr` before the previous
#     - until you get to the first element of `arr`
#       - place this value at the end of `rotated_arr`
#   - return `rotated_arr`

# CODE #
=begin
# algorithm based code #
def rotate_array(arr)
  rotated_arr = []
  idx = arr.size - 1

  while idx > 0
    rotated_arr.unshift(arr[idx])
    idx -= 1
  end

  rotated_arr.push(arr[0])
  rotated_arr
end
=end
=begin
# ruby sugar #
def rotate_array(arr)
  tmp_idx = 0
  arr.map do
    tmp_idx += 1
    if tmp_idx == arr.size
      arr[0]
    else
      arr[tmp_idx]
    end
  end
end
=end

# LS Solution: Array Slicing
def rotate_array(arr)
  # arr[1..-1] + [arr[0]]  # same result different syntax
  arr[1..-1].push(arr[0])
end
=begin
p rotate_array([7, 3, 5, 2, 9, 1])
puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts
p rotate_array(['a', 'b', 'c'])
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts
p rotate_array(['a'])
puts rotate_array(['a']) == ['a']
puts puts

x = [1, 2, 3, 4]
p rotate_array(x)
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts "x == [1, 2, 3, 4] => #{x == [1, 2, 3, 4]}"    # => true
puts puts
=end

# further exploration: #
def rotate_string(str)
  rotate_array(str.chars).join
end

puts rotate_string("water")
puts

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

puts rotate_integer(1234)
puts rotate_integer(1234).class
puts puts
