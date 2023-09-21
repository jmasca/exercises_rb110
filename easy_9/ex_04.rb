system 'clear'
# easy 9 - exercise 04

# PROBLEM #

#   - Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.

#   - You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

#   input: String (of words separated by spaces)
#   output: Array (contains every word from the string and its length)

#   explicit:
#     - write a method
#     - the method takes a String as an argument
#     - return an Array
#         - ARRAY -
#             - each element is a word from the given String
#             - appended to each word is the word length separated by a space
#     - WORD -
#         - any substring of non-space characters
#         - words are separated by a space

#   implicit:
#     - punctuation is attached to the word and counted as part of its length
#     - counting the series of characters that are not spaces
#     - an empty string returns an empty array

# EXAMPLES #

#   "cow sheep chicken" => ["cow 3", "sheep 5", "chicken 7"]
#   "It ain't easy, is it?" => ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
#   "" => []

# DATA STRUCTURES #

#   - String (of words/sequence of chars separated by a space)
#   - Array (of each word from the String along with a space and its length)

# ALGORITHM #

#   - define a method named `word_lengths`
#   - `word_lengths` accepts a String argument named `str`

#   - initialize an array named `words` and populate it with words from `str`
#   - iterate through each word of `words`
#       - append a space and the length of the current word to the current word

#   - return the array of words and their lengths

# CODE #

def word_lengths(str)
  str.split.map { |word| "#{word} #{word.size}" }
end

puts word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
puts

puts "baseball hot dogs and apple pie"
puts word_lengths("baseball hot dogs and apple pie")
puts word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

puts

puts word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

puts word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

puts word_lengths("") == []

puts 
puts word_lengths("the dog walked across the street")
puts
