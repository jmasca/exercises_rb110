system 'clear'
# medium 2 - exercise 3

# PROBLEM #

#   - Write a method that takes a string, and then returns a hash that contains
#     3 entries: one represents the percentage of characters in the string that
#     are lowercase letters, one the percentage of characters that are
#     uppercase letters, and one the percentage of characters that are neither.

#   - You may assume that the string will always contain at least one character.

#   input: String (a mix of lowercase, uppercase, and other chars)
#   output: Hash (keys are char type, values are percentages)

#   rules:
#     explicit:
#       - method accepts a String argument
#       - count the number of chars that are lowercase, uppercase, and neither
#       - use a hash to represents the percentage of chars that are l, u, or n
#       - String will always contain at least one char
#       - return the hash
#     implicit:
#       - whitespace is consider a "neither" character

# EXAMPLES #

#   '123' == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# DATA STRUCTURES #

#   - String
#   - Hash

# ALGORITHM #

#   - define a method named `letter_percentages`
#     - `letter_percentages` accepts a String argument, `str`
#   - assign a hash variable `percents` the following:
#       - lowercase: 0.0
#       - uppercase: 0.0
#       - neither: 0.0
#     - count the number of lowercase chars in `str`
#         - divide this number by the size of `str`
#         - multiply this number by 100
#         - assign the result to `:lowercase` in the hash `percents`
#     - repeat the above for uppercase chars in `str`
#         - assign the result to `:uppercase` in the hash `percents`
#     - from 100.0, subtract the values from `:lowercase` and `:uppercase`
#         - assign this result to `:neither` in the hash `percents`
#     - return the hash `percents`

# CODE #

def letter_percentages(str)
  percents = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }

  percents[:lowercase] = (str.count('a-z') / str.size.to_f) * 100
  percents[:uppercase] = (str.count('A-Z') / str.size.to_f) * 100
  percents[:neither] = 100.0 - percents[:lowercase] - percents[:uppercase]

  percents
end

puts letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
puts

=begin
# Further Exploration:
def letter_percentages(str)
  percents = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }

  percents[:lowercase] = ((str.count('a-z') / str.size.to_f) * 100).round(1)
  percents[:uppercase] = ((str.count('A-Z') / str.size.to_f) * 100).round(1)
  percents[:neither] = 100.0 - percents[:lowercase] - percents[:uppercase]

  percents
end

puts letter_percentages('abcdefGHI')
puts
=end
