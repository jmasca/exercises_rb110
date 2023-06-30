# ex_01.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that combines two Arrays passed in as arguments, and
#     returns a new Array that contains all elements from both Array
#     arguments, with the elements taken in alternation.

#   - You may assume that both input Arrays are non-empty, and that they have
#     the same number of elements.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - combine two arrays into one new array by alternating their elements until
#     all elements are used

# --- EXAMPLES --- #

# [1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
# [1] -> [1, 'a'] -> [1, 'a', 2] ...

# --- DATA STRUCTURES --- #

#   - Arrays

# --- ALGORITHM --- #

#   - starting at the first index of the first array:
#     - add this element to the new array
#   - go to the first index of the second array:
#     - add this element to the new array
#   - increment the index
#   - repeat until all elements have been added to the new array

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:

def interleave(arr1, arr2)
  combined_array = []
  idx = 0

  while idx < arr1.size
    combined_array << arr1[idx]
    combined_array << arr2[idx]
    idx += 1
  end
  combined_array
end

# LS inspired solution:

def interleave1(arr1, arr2)
  combined_array = []
  arr1.each_with_index do |e, idx|
    combined_array.push(e, arr2[idx])
  end
  combined_array
end

# further exploration using #zip:

def interleave2(arr1, arr2)
  arr1.zip(arr2).flatten(1)
end


# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave([[0, 1], 3], [2, [4, 5]])
p interleave([[0, 1], 3], [2, [4, 5]]) == [[0, 1], 2, 3, [4, 5]]
puts

p interleave1([1, 2, 3], ['a', 'b', 'c'])
p interleave1([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave1([[0, 1], 3], [2, [4, 5]])
p interleave1([[0, 1], 3], [2, [4, 5]]) == [[0, 1], 2, 3, [4, 5]]
puts

p interleave2([1, 2, 3], ['a', 'b', 'c'])
p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave2([[0, 1], 3], [2, [4, 5]])
p interleave2([[0, 1], 3], [2, [4, 5]]) == [[0, 1], 2, 3, [4, 5]]
puts

# --------------------------------------------------------------------------- #
