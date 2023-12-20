system 'clear'
# medium 2 - exercise 4

# PROBLEM #

#   - Write a method that takes a string as an argument, and returns true if
#     all parentheses in the string are properly balanced, false otherwise.

#   - To be properly balanced, parentheses must occur in matching '(' and ')'
#     pairs.
#   - Note that balanced pairs must each start with a (, not a ).

#   input: String
#   output: Boolean

#   rules:
#     explicit:
#       - method accepts a String argument
#       - returns a boolean value of true or false
#       - true -> parentheses are properly balanced, meaning:
#         - first pair of the parentheses must be a '('
#         - ending pair of the parentheses must be a ')'
#         - there must be a '(' and a ')' to be considered properly balanced
#           and be a matching pair
#       - false -> parentheses are not matched/balanced properly
#     implicit:
#       - if no parentheses are present, return true

# EXAMPLES #

#   'What (is) this?' == true
#   'What is) this?' == false

# DATA STRUCTURES #

#   - String
#   - Boolean

# ALGORITHM #

#   - define a method named `balanced?`
#       - this method accepts a String argument `str`

#   - count the number of parentheses either '(' or ')' found in `str`
#       - if this number is odd, return false
#   - delete all chars other than parentheses and store the result in `pairs`
#   - assign an empty string to a variable named `tmp`
#   - begin to iterate each char, each parentheses
#       - if `tmp` is empty and the current char is ')', return false
#       - otherwise (this means `tmp` has contents)
#           - if the curr char is ')', delete the trailing '(' from `tmp`
#           - otherwise, the current char must be '(', so add it to `tmp`
#   - after all chars iterated:
#       - if `tmp` is now empty, return true, otherwise return false

=begin
def balanced?(str)
  return false if str.count('()').odd?

  pairs = str.delete('^()')
  tmp = ''

  pairs.each_char do |c|
    if tmp.empty? && c == ')'
      return false
    elsif c == ')'
      tmp.delete_suffix!('(')
    else
      tmp << c
    end
  end
  tmp.empty? ? true : false
end
=end

# LS Inspired Solution #
def balanced?(str)
  parentheses = 0

  str.each_char do |char|
    parentheses += 1 if char == '('
    parentheses -= 1 if char == ')'
    break if parentheses < 0
  end

  parentheses.zero?
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
puts balanced?('What ())(is() up') == false
puts
