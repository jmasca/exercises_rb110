# easy 8 exercise 6

# question:
#     - Write a method that takes a string, and returns a new string in which
#       every character is doubled.

# problem:
#   - method takes a string argument, doubles every character, and returns the
#     new string

#   input: string
#   output: string

#   rules:
#     explicit:
#       - double every character
#       - return a NEW string
#     implicit:
#       - whitespace and punctuation is also doubled (any char)
#       - empty strings return empty strings

# examples:
#   'Hello' == "HHeelllloo"
#   "Good job!" == "GGoooodd  jjoobb!!"
#   '' == ''

# data structure:
#   - string
#   - array to hold chars

# algorithm:
#   - get a string into the method named `str`
#   - create an empty string variable to hold the new string named `dbl_str`
#   - iterate the chars of `str`
#       - double the char
#       - add the doubled char to `dbl_str`
#   - return `dbl_str` after all chars iterated

# code:

def repeater(str)
  dbl_str = ''
  str.each_char { |c| dbl_str << c * 2 }
  dbl_str
end


p repeater('Hello')
p repeater('Hello') == "HHeelllloo"
puts
p repeater("Good job!")
p repeater("Good job!") == "GGoooodd  jjoobb!!"
puts
p repeater('')
p repeater('') == ''
puts puts




















