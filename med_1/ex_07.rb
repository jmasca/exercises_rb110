system 'clear'
# medium 1 - exercise 7

# PROBLEM #

#   - Write a method that takes a sentence string as input, and returns the
#     same string with any sequence of the words 'zero', 'one', 'two', 'three',
#     'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of
#     digits.

#   input: String
#   output: String

#   rules:
#     explicit:
#       - accepts a string sentence
#       - returns self; modifications are made to the string passed in
#       - any digit in word form is converted to number form ("four" => "4")
#         - the number form is still a string object ("4")

# EXAMPLE #

# 'five five five one two three four' -> '5 5 5 1 2 3 4'

# DATA STRUCTURES #

#   - String
#   - Hash to hold word to number format (constant?)

# ALGORITHM #

#   - define a constant Hash named `DIGITS` to represent the word -> num format
#       - `DIGITS` includes 'zero' to 'nine' for keys and '0' to '9' for values
#   * must freeze mutable constants *

#   - define a method named `word_to_digit`
#     - method will accept a string argument named `sentence`
#   - iterate each key in `DIGITS` then look for a match in `sentence`
#     - if a word matches that key, replace the word with that keys value
#     - otherwise, go to the next key
#     - repeat for all keys in `DIGITS`
#   - return the modified version of `sentence`

# CODE #

DIGITS =
  { 'zero' => '0',  'one' => '1',
    'two' => '2',   'three' => '3',
    'four' => '4',  'five' => '5',
    'six' => '6',   'seven' => '7',
    'eight' => '8', 'nine' => '9' }.freeze

def word_to_digit(sentence)
  DIGITS.each_key do |word|
    sentence.gsub!(/\b#{word}\b/, DIGITS)
  end
  sentence
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
puts word_to_digit('Please call me at five five five one two three four. Thanks.')
puts
