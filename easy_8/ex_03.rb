# ex_03.rb
system 'clear'
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that returns a list of all substrings of a string.

#   - The returned list should be ordered by where in the string the substring
#     begins. This means that all substrings that start at position 0 should
#     come first, then all substrings that start at position 1, and so on.
#     Since multiple substrings will occur at each position, the substrings at
#     a given position should be returned in order from shortest to longest.

#   - You may (and should) use the leading_substrings method you wrote in the
#     previous exercise.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - from a given string, return a list of all substrings from that string.

#   input: String
#   output: Array (of all substrings from the input string)

#   negating the rules for brevity (quite similar to the previous exercise).

# --- EXAMPLES --- #

#   all substrings

# --- DATA STRUCTURES --- #

#   - String
#   - Array

# --- ALGORITHM --- #

#   - initialize an empty array called `substrings` to hold our list
#   - initialize a counter variable to 1 to keep track of our index in the str
#   1 - begin iteration of the string from the first char (then the next char)
#       - initialize a string `substring` to the value of the current char
#       - add the `substring` to the `substrings` list
#     2 - iterate to the next char of the string
#       - add this char to the string `substring` ('ab')
#       - add the new `substring` to the `substrings` list
#       - repeat from step 2 until all chars have been iterated
#     - increment our index counter by 1
#   3 - go back to step 1 and iterate to the next char
#     - repeat all steps until all chars from step 1 have been iterated
#   - return the list of substrings

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:
=begin
def substrings(str)
  substrings = []
  curr_idx = 1

  str.each_char do |lead_char|
    substring = lead_char
    substrings << substring
    (curr_idx...str.size) do |idx|
      substring += str[idx]
      substrings << substring
    end
    curr_idx += 1
  end
  substrings
end
=end
# solution calling a helper method

def leading_substrings(str)
  substring = ''
  str.chars.map { |char| substring += char }
end

def substrings(str)
  substrings = []
  (0...str.size).each { |idx| substrings += leading_substrings(str[idx..-1]) }
  substrings
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p substrings('abcde')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
puts

# --------------------------------------------------------------------------- #
