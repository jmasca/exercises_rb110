# ex_11.rb
system 'clear'
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that counts the number of occurrences of each element in
#     a given array.

#   - The words in the array are case-sensitive: 'suv' != 'SUV'.

#   - Once counted, print each element alongside the number of occurrences:
#     car => 4

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - given an array of elements, count the number of times each element
#     appears within the array.

#   input: Array
#   output: Strings (consisting of an array element and its count per line)

#   rules:
#     explicit:
#       - given an array of elements
#       - the array elements are case-sensitive
#       - each element must be paired with its count for the output
#     implicit:
#       - the array will always consist of at least one element
#       - the return value does not matter/is not used

# --- EXAMPLES --- #

#   vehicles = [
#     'car', 'car', 'truck', 'car', 'SUV', 'truck',
#     'motorcycle', 'motorcycle', 'car', 'truck'
#   ]
#   
#   count_occurrences(vehicles)
#   
#   expected output:
#   car => 4
#   truck => 3
#   SUV => 1
#   motorcycle => 2

# --- DATA STRUCTURES --- #

#   - Array
#   - String
#   - Hash

# --- ALGORITHM --- #

#   - initialize an empty hash to keep track of the elements and their counts
#   - begin with the initial element of the array
#     - check the hash to see if the key exists:
#       - if the key exists, go to the next element of the array
#       - otherwise:
#         - add this element to the hash as a key and for the value:
#           - count the number of times the element appears in the array and
#             use this number as the value 
#   - repeat until all elements have been compared
#   - from the hash, print each key with its value

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:

def count_occurrences(arr)
  counts = {}
  arr.each do |ele|
    next if counts.key?(ele)
    counts[ele] = arr.count(ele)
  end
  counts.each { |ele, count| puts "#{ele} => #{count}" }
end

# compacted algorithm solution:

def count_occurrences1(arr)
  counts = {}
  arr.uniq.each { |ele| counts[ele] = arr.count(ele) }
  counts.each { |ele, count| puts "#{ele} => #{count}" }
end

# sugary Ruby solution:

def count_occurrences2(arr)
  arr.uniq.each { |ele| puts "#{ele} => #{arr.count(ele)}" }
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
puts

count_occurrences1(vehicles)
puts

count_occurrences2(vehicles)
puts

# --------------------------------------------------------------------------- #
