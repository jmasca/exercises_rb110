system 'clear'
# medium 2 - exercise 9

# PROBLEM #

#   - Bubble Sort
#       - Bubble Sort is one of the simplest sorting algorithms available. It
#         isn't an efficient algorithm, but it's a great exercise for student
#         developers. In this exercise, you will write a method that does a
#         bubble sort of an Array.

#       - A bubble sort works by making multiple passes (iterations) through
#         the Array. On each pass, each pair of consecutive elements is
#         compared. If the first of the two elements is greater than the
#         second, then the two elements are swapped. This process is repeated
#         until a complete pass is made without performing any swaps; at that
#         point, the Array is completely sorted.

#   - Write a method that takes an Array as an argument, and sorts that Array
#     using the bubble sort algorithm as just described.
#     Note that your sort will be "in-place"; that is, you will mutate the
#     Array passed as an argument.
#   - You may assume that the Array contains at least 2 elements.

#   input: Array (unsorted)
#   output: n/a (we will mutate the Array being passed in)

#   rules:
#     explicit:
#       - accept an Array as an argument to the method
#       - mutate the Array directly
#       - uses the Bubble Sort Algorithm
#         - iterates the Array
#         - compares each pair of consecutive elements
#         - swaps the pair if the first element is greater than the second
#           - repeat the above steps until no swaps are made (Array is sorted)
#       - Arrays passed will contain at leaste 2 elements
#     implicit:
#       - there is no specification on the elements contained within the Array
#           - example Arrays provided are filled with Integers or Strings

# EXAMPLES #

#   [4, 2, 1, 3]
#   -- begin first pass --
#     -> 4 > 2 (yes, swap the elements)
#   [2, 4, 1, 3]
#     -> 4 > 1 (yes, swap the elements)
#   [2, 1, 4, 3]
#     -> 4 > 3 (yes, swap the elements)
#   [2, 1, 3, 4]
#   -- begin second pass --
#     -> 2 > 1 (yes, swap the elements)
#   [1, 2, 3, 4]
#     -> 2 > 3 (no, leave elements in place)
#   [1, 2, 3, 4]
#     -> 3 > 4 (no, leave elements in place)
#   [1, 2, 3, 4]
#   -- begin third pass --
#     -> 1 > 2 (no, leave elements in place)
#   [1, 2, 3, 4]
#     -> 2 > 3 (no, leave elements in place)
#   [1, 2, 3, 4]
#     -> 3 > 4 (no, leave elements in place)
#   Array is sorted!

# DATA STRUCTURES # 

#   - Array
#   - Integer
#   - String

# ALGORITHM #

#   - define a method named `bubble_sort!`
#     - this method accepts an Array argument, `arr`
#   - begin a loop -
#     - initialize a variable, `swaps`, to hold number of swaps, set to 0
#     - begin iterating the array indices -
#       - compare the first element with the second element
#         - if first element > second element
#           - swap the two elements
#           - increase the `swaps` count by 1
#         - otherwise, go to the next element
#       - iterate until the current ele index is 2 less than the size of `arr`
#     - repeat the loop until `swaps` ends at 0

# CODE #
=begin
def bubble_sort!(arr)
  loop do
    swaps = 0
    arr.each_index do |idx|
      break if idx == arr.size - 1
      if arr[idx] > arr[idx + 1]
        tmp = arr[idx]
        arr[idx] = arr[idx + 1]
        arr[idx + 1] = tmp
        swaps += 1
      end
    end
    break if swaps.zero?
  end
end
=end
# LS Inspired Solution for Code Optimization #

def bubble_sort!(arr)
  loop do
    swapped = false
    
    0.upto(arr.size - 2) do |idx|
      next if arr[idx] <= arr[idx + 1]
      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      swapped = true
    end

    break unless swapped
  end
end

array = [5, 3]
bubble_sort!(array)
p array
puts array == [3, 5]
puts

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array
puts array == [1, 2, 4, 6, 7]
puts

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
puts
