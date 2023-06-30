# ex_03.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that takes a single String argument and returns a new
#     string that contains the original value of the argument with the first
#     character of every word capitalized and all other letters lowercase.

#   - You may assume that words are any sequence of non-blank characters.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - from a given string, return a new string with the original values, but
#     with the first character of every word capitalized.

#   input: String
#   output: String

#   rules:
#     explicit:
#       - returning a new string
#       - original values, but with first character capitalized
#       - a word is any sequence of non-blank characters
#     implicit:
#       - a new word is considered to begin after a space

# --- EXAMPLES --- #

#   'this is a "quoted" word' == 'This Is A "quoted" Word'

# --- DATA STRUCTURES --- #

#   - String (input and output)
#   - Array (to store words)

# --- ALGORITHM --- #

#   - break the string up into words and store each word in an Array
#   - iterate through each word:
#     - uppercase the first letter
#     - move to the next word
#   - after all words are iterated through, join them with a space between each
#   - return the new string

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:

def word_cap(str)
  words = str.split

  words.map do |word|
    word = word.downcase
    word[0] = word[0].upcase
    word
  end.join(' ')
end

# alternate solution:

def word_cap1(str)
  str.split.map(&:capitalize).join(' ')
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p word_cap('four score and seven')
p word_cap('four score and seven') == 'Four Score And Seven'
puts

p word_cap('the javaScript language')
p word_cap('the javaScript language') == 'The Javascript Language'
puts

p word_cap('this is a "quoted" word')
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
puts

p word_cap1('four score and seven')
p word_cap1('four score and seven') == 'Four Score And Seven'
puts

p word_cap1('the javaScript language')
p word_cap1('the javaScript language') == 'The Javascript Language'
puts

p word_cap1('this is a "quoted" word')
p word_cap1('this is a "quoted" word') == 'This Is A "quoted" Word'
puts

# --------------------------------------------------------------------------- #
