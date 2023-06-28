# ex_06.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:
#   - Write a method that takes two Arrays as arguments, and returns an Array
#     that contains all of the values from the argument Arrays. There should
#     be no duplication of values in the returned Array, even if there are
#     duplicates in the original Arrays.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #
#   - return an array that is a combination of two given arrays
#   - remove any duplicate elements

#   input: two arrays (to be combined)
#   output: one array (a combination of the two input arrays)

# --- EXAMPLES --- #
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# --- DATA STRUCTURES --- #
#   - arrays

# --- ALGORITHM --- #

# --------------------------------------------------------------------------- #

# --- CODE --- #

# option 1:
def merge1(arr1, arr2)
  (arr1 + arr2).uniq!
end

# option 2:
def merge2(arr1, arr2)
  arr1 | arr2
end

# option 3:
def merge3(arr1, arr2)
  arr3 = []
  idx = 0

  while idx < arr1.size
    arr3 << arr1[idx] unless arr3.include?(arr1[idx])
    arr3 << arr2[idx] unless arr3.include?(arr2[idx])
    idx += 1
  end
  arr3.sort
end

p merge1([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge2([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge3([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
puts

# --------------------------------------------------------------------------- #
