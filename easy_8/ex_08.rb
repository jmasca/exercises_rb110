system "clear"
# easy 8 - exercise 8 (aiming for less perfection)

# exercise 8:
#   - Write a method that takes one argument, a string, and returns a new
#     string with the words in reverse order.

# PROBLEM #
#   - create a method which accepts one string argument. Reverse the order of
#     the words in the string and return them as a new string.

#   input: string
#   output: string

#   rules:
#     explicit:
#       - need a string argument
#       - reverse the order of the words in the given string
#       - return the reversed string as a new string
#     implicit:
#       - words in reverse order may end up in the same position
#       - a string consisting of only whitespace returns an empty string

# EXAMPLES #
#   - 'Reverse these words' == 'words these Reverse'
#   - '    ' == ''    # Any number of spaces results in ''

# DATA STRUCTURE #
#   - string
#   - array to rearrange/store words of the string

# ALGORITHM #
#   - get a string argument and store it as `fwd_str`
#   - temporarily remove all whitespace and see if the string is empty
#       - return an empty string if so
#   - store words in an array named `words`
#   - reverse the order of the array with index 0 swapping with index -1
#   - combine the reversed array into a new string named `rev_str`
#   - return `rev_str`

# CODE #

# algorithm:
=begin
def reverse_sentence(fwd_str)
  return '' if fwd_str.strip.empty?
  words = fwd_str.split
  rev_str = words.reverse.join(' ')
  rev_str
end
=end

# ruby sugar
def reverse_sentence(str)
  str.split.reverse.join(' ')
end

# split will return an empty string for the last two test due to it splitting
# at whitespace when invoked.

puts reverse_sentence('Hello World')
puts reverse_sentence('Hello World') == 'World Hello'
puts

puts reverse_sentence('Reverse these words')
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts

puts reverse_sentence('')
puts reverse_sentence('') == ''
puts

puts reverse_sentence('    ')
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
puts puts
