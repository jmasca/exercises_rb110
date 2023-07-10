# ex_10.rb
system 'clear'
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that returns the next to last word in the String passed
#     to it as an argument.

#   - Words are any sequence of non-blank characters.

#   - You may assume that the input String will always contain at least two
#     words.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - given a string of at least two words, return the next to last word.

#   input: String
#   output: String

#   rules:
#     explicit:
#       - each string will contain at least two words
#       - words are any sequence of chars other than blanks
#       - return the next to last word (-2 for array index)
#     implicit:
#       - 

# --- EXAMPLES --- #

#   'Launch School is great!' == 'is'

# --- DATA STRUCTURES --- #

#   - String
#   - Array (to hold the words from the string)

# --- ALGORITHM --- #

#   - place each word from the string into an array
#     - do so by concluding a word to be chars separated by whitespace
#   - return the second from last element in the array (-2)

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:

def penultimate(str)
  str.split[-2]
end

# further exploration:

#   accounting for the edge cases of 1 or 0 words in the string:

def penultimate1(str)
  return str if str.split.size < 2
  str.split[-2]
end

# retreiving the middle word

#   - Suppose we need a method that retrieves the middle word of a
#     phrase/sentence.
#       - What edge cases need to be considered?
#       - How would you handle those edge cases without ignoring them?

#   - Write a method that returns the middle word of a phrase or sentence.
#       (It should handle all of the edge cases you thought of.)

# edge case:
#   - strings containing 1 or 0 words
# solution:
#   - return the string as we did in the previous further exploration

# edge case:
#   - strings containing an even number of words (beginning at 2)
# solution:
#   - always return the lower indexed word
#       - eg. with a string of 4 words return word 2
#             [1, 2, 3, 4] -> [2, 3] -> [2]
#   - use a default parameter with the option to switch to the higher index

def middle_word(str, idx_change=0)
  words = str.split
  num_of_words = words.size
  return str if num_of_words < 2
  return words[(num_of_words / 2 - 1) + idx_change] if num_of_words.even?
  words[(num_of_words / 2)]
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p penultimate('last word')
p penultimate('last word') == 'last'
puts

p penultimate('Launch School is great!')
p penultimate('Launch School is great!') == 'is'
puts

p penultimate1('last word')
p penultimate1('last word') == 'last'
puts

p penultimate1('Launch School is great!')
p penultimate1('Launch School is great!') == 'is'
puts

p penultimate1('single')
p penultimate1('single') == 'single'
puts

p penultimate1('')
p penultimate1('') == ''
puts

# --------------------------------------------------------------------------- #

# --- further exploration test cases --- #

p middle_word('')
p middle_word('') == ''
puts

p middle_word('one')
p middle_word('one') == 'one'
puts

p middle_word('two words')
p middle_word('two words') == 'two'
puts

p middle_word('two words', 1)
p middle_word('two words', 1) == 'words'
puts

p middle_word('I love Launch School!')
p middle_word('I love Launch School!') == 'love'
puts

p middle_word('I love Launch School!', 1)
p middle_word('I love Launch School!', 1) == 'Launch'
puts

p middle_word('I can do hard things!')
p middle_word('I can do hard things!') == 'do'
puts

p middle_word('she took the midnight train going anywhere')
p middle_word('she took the midnight train going anywhere') == 'midnight'
puts

# --------------------------------------------------------------------------- #
