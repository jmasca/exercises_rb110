system "clear"
# easy 8 - exercise 9

# exercise 9:
#   - Write a method that takes one argument, a string containing one or more
#     words, and returns the given string with words that contain five or more
#     characters reversed. Each string will consist of only letters and spaces.
#     Spaces should be included only when more than one word is present.

# PROBLEM #
#   - given a string of one or more words (consisting of only letters and
#     spaces), return the string with all of the words that contain at least 5
#     chars, reversed. Spaces are only included if there're more than one word.

# (do not reword the exercise in the next problem, begin at input/output)

#   input: String
#   output: String (the same given string modified)

#   rules:
#     - explicit:
#         - if a word has 5 or more chars, reverse the word
#         - each string has only letters and spaces
#         - spaces are left in the string only if there's more than 1 word
#     - implicit:
#         - case remains the same for reversed words - eg. Launch => hcnuaL

# EXAMPLES #
#   - 'Professional'          # => lanoisseforP
#   - 'Walk around the block' # => Walk dnuora the kcolb
#   - 'Launch School'         # => hcnuaL loohcS

# DATA STRUCTURE #
#   - String
#   - Array to temp hold chars when reversing words

# ALGORITHM #
#   - accept a String argument into the method called `str`
#   - iterate the words of `str`
#     - if a word is 5 or more chars, reverse the word
#   - after all chars iterated, return the modified version of `str`

# CODE #

def reverse_words(str)
  str.split.map! { |word| word.size >= 5 ? word.reverse : word }.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Professional') == "lanoisseforP"
puts
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Walk around the block') == "Walk dnuora the kcolb"
puts
puts reverse_words('Launch School')         # => hcnuaL loohcS
puts reverse_words('Launch School') == "hcnuaL loohcS"
puts puts
