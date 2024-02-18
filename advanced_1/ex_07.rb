system 'clear'
# advanced 1 - exercise 7

# PROBLEM #

#   Write a method that takes two sorted Arrays as arguments, and returns a new
#     Array that contains all elements from both arguments in sorted order.

#   You may not provide any solution that requires you to sort the result
#     array. You must build the result array one element at a time in the
#     proper order.

#   Your solution should not mutate the input arrays.

#   input: two Arrays (sorted)
#   output: one Array (a combination of the two provided, all elements sorted)

#   rules:
#     explicit:
#       - method must accept two arrays
#       - both given arrays are already sorted
#       - combine the two given arrays into one single array with all
#           of the elements sorted in ascending order
#       - must build the new array one element at a time
#       - cannot mutate the original arrays
#     implicit:
#       - no size limitation on the given arrays, empty arrays are included

# EXAMPLES #
#   given -> [2, 3], [1, 4, 8]
#   new -> [1]
#       -> [1, 2]
#       -> [1, 2, 3]
#       -> [1, 2, 3, 4]
#       -> [1, 2, 3, 4, 8]

# DATA STRUCTURES #
#   - Array

# ALGORITHM #

#   - define a method named `merge` that accepts two arrays, `arr1` and `arr2`
#     - initialize an empty array named `merged_sorted`
#     - initialize two index variables `idx1` and `idx2`
#     - 

def merge(arr1, arr2)
  merged_sorted = []
  idx1, idx2 = 0, 0

  until idx1 >= arr1.size && idx2 >= arr2.size do
    if arr1[idx1] == nil
      merged_sorted << arr2[idx2]
      idx2 += 1
    elsif arr2[idx2] == nil
      merged_sorted << arr1[idx1]
      idx1 += 1
    else
      case arr1[idx1] < arr2[idx2]
      when true
        merged_sorted << arr1[idx1]
        idx1 += 1
      when false
        merged_sorted << arr2[idx2]
        idx2 += 1
      end
    end
  end
  merged_sorted
end

p merge([2, 3], [1, 4, 8])
puts
puts merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
puts merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
puts merge([], [1, 4, 5]) == [1, 4, 5]
puts merge([1, 4, 5], []) == [1, 4, 5]
puts

# LS Solution #
=begin
def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end
=end
