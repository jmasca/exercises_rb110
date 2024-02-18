system 'clear'
# advanced 1 - exercise 8

# PROBLEM #

#   Sort an array of passed in values using merge sort.

#   You can assume that this array may contain only one type of data. And that
#     data may be either all numbers or all strings.

#   Merge sort is a recursive sorting algorithm that works by breaking down the
#     array elements into nested sub-arrays, then recombining those nested
#     sub-arrays in sorted order.

#   It is best shown by example. For instance, let's merge sort the array
#     [9,5,7,1]. Breaking this down into nested sub-arrays, we get:

=begin

[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]

#   We then work our way back to a flat array by merging each pair of nested
#     sub-arrays:

[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]

=end

#   input: Array (either all numbers or all strings)
#   output: Array (all elements sorted in ascending order)

#   rules:
#     explicit:
#       - accept an array into the method
#       - the array will contain either all numbers or all strings
#       - sort the array using the merge sort algorithm:
#         - recursive sorting algorithm
#         - breaks the array down into nested sub-arrays
#         - recombines nested sub-arrays in ascending order
#     implicit:
#       - there is no mention of mutating the given array or not
#       - the provided array will contain at least two elements
#       - all strings begin with the same order of cased letters

# EXAMPLES #

#   [8, 3, 2, 6]
#   -> [[8, 3], [2, 6]]
#     -> [[[8], [3], [2], [6]]]
#   -> [[3, 8], [2, 6]]
#   [2, 3, 8, 6]

# DATA STRUCTURES #
#   - Array (nested)

# ALGORITHM #

#   - define a method named `merge_sort` that accepts a single array element
#     - the array will be named `unsorted_arr`
#     - divide the array in half, round up, and use the result as the middle
#       index (this will be the first index of the last array)
#     - create two new arrays with the two halves of the array
#     - repeat until only single element arrays remain
#     - return the single arrays and pass them into `merge` method from ex 07
#     - pass all subsequent arrays to `merge` method until one sorted array left
#     - return sorted array
#   - end method

# CODE #

# my merge solution from exercise 7 #
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


# exercise 8 coding solution #

def merge_sort(unsorted_arr)
  return unsorted_arr if unsorted_arr.size == 1
    mid_idx = unsorted_arr.size.ceildiv(2)
    left_arr = unsorted_arr[0...mid_idx]
    right_arr = unsorted_arr[mid_idx..]

    left_arr = merge_sort(left_arr)
    right_arr = merge_sort(right_arr)
    merge(left_arr, right_arr)
end

test_arr = [8, 3, 2, 6, 1]
test_arr1 = [9, 5, 7, 1]

p merge_sort(test_arr1)
p merge_sort(test_arr)
puts

p merge_sort([9, 5, 7, 1])
puts merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
puts

p merge_sort([5, 3])
puts merge_sort([5, 3]) == [3, 5]
puts

p merge_sort([6, 2, 7, 1, 4])
puts merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
puts

p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))
puts merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
puts

p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46])
puts merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
puts
