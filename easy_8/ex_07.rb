system "clear"
# easy 8 exercise 7

# question:
#     - Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# problem:

#   - method takes a string argument and returns a new string
#   - the new string will consist of all consonant chars doubled of the og str
#   - vowels (not y), digits, punctuation, and whitespace are ignored

#   input: str
#   output: str

#   rules:
#     - explicit:
#         - double every consonant
#         - vowels, punctuation, digits, whitespace are all ignored
#     - implicit:
#         - 



# examples:
#   'String' == "SSttrrinngg"
#   "Hello-World!" == "HHellllo-WWorrlldd!"
#   "July 4th" == "JJullyy 4tthh"
#   '' == ""

#   4th
#     -> 4 => 4
#     -> t => tt
#     -> h => hh
#     => 4tthh

# data structure:
#   - string

# algorithm:
#   - accept a string named `str`
#   - create an empty string variable named `dbl_con`
#   - iterate each char of `str`
#       - if the char is a consonant, double it and concat it to `dbl_con`
#       - otherwise, concat the single char to `dbl_con`
#   - return `dbl_con` after all chars of `str` have been iterated through

# code:

CONSONANTS = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n',
              'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

# for the above ^ next time use %w(b c d etc)

def double_consonants(str)
  dbl_con = ''
  str.each_char do |c| 
    CONSONANTS.include?(c.downcase) ? dbl_con << (c * 2) : dbl_con << c
  end
  dbl_con
end

p double_consonants('String')
p double_consonants('String') == "SSttrrinngg"
puts
p double_consonants("Hello-World!")
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts
p double_consonants("July 4th")
p double_consonants("July 4th") == "JJullyy 4tthh"
puts
p double_consonants('')
p double_consonants('') == ""
puts
puts
