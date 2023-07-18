# ex_01.rb
system 'clear'
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that takes an Array of numbers and then returns the sum
#     of the sums of each leading subsequence for that Array.

#   - You may assume that the Array always contains at least one number.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - given a array of numbers, sum the numbers of each leading subsequence for
#     the array and then sum all of those together

#   input: Array (of numbers)
#   output: Integer

#   rules:
#     explicit:
#       - will be given an array of numbers containing at least one number
#       - the leading subsequences will start with the first number as the
#         first sequence, then add that first number to the following number,
#         then add that to the sum of first two numbers and the following
#         number, etc.
#     implicit:
#       - a single number returns itself

# --- EXAMPLES --- #

#   [3, 5, 2])

#   (3) +
#   (3 + 5) +
#   (3 + 5 + 2)
#   == 21

# --- DATA STRUCTURES --- #

#   - Array
#   - Integer

# --- ALGORITHM --- #

#   - initialize a counter variable to 0 (for the last index of nums to add)
#   - initialize an new empty array to hold the sums of each subsequence
#   - iterate the given array:
#     - initialize a result variable to 0
#     - add all elements from idx 0 to our counter variable last_idx
#     - put the result into our new array
#     - increment our last_idx variable by 1 to create the next subsequence
#   - continue until all numbers have been added and placed in the new array
#   - sum the numbers in the new array and return the total

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:

def sum_of_sums(arr)
  last_idx = 0
  subsequence_sums = []

  arr.each do |num|
    result = 0
    (0..last_idx).each do |idx|
      result += arr[idx]
    end
    subsequence_sums << result
    last_idx += 1
  end
  subsequence_sums.sum
end

# simpler solution:

def sum_of_sums1(arr)
  final_sum = 0
  running_sum = 0

  arr.each do |num|
    running_sum += num
    final_sum += running_sum
  end
  final_sum
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p sum_of_sums([3, 5, 2])
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts

p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3)
puts

p sum_of_sums([4])
p sum_of_sums([4]) == 4
puts

p sum_of_sums([1, 2, 3, 4, 5])
p sum_of_sums([1, 2, 3, 4, 5]) == 35
puts

p sum_of_sums1([3, 5, 2])
p sum_of_sums1([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts

p sum_of_sums1([1, 5, 7, 3])
p sum_of_sums1([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3)
puts

p sum_of_sums1([4])
p sum_of_sums1([4]) == 4
puts

p sum_of_sums1([1, 2, 3, 4, 5])
p sum_of_sums1([1, 2, 3, 4, 5]) == 35
puts


# --------------------------------------------------------------------------- #
