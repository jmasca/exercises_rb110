system 'clear'
# easy 9 - exercise 10

# PROBLEM #

#   - Write a method that takes one argument, a positive integer, and returns
#     the sum of its digits.

#     (for a challenge, try writing without any basic looping constructs)

#   input: integer
#   output: integer

#   explicit:
#     - add together each digit of a given positive integer
#     - return the result (sum of all individual integers)

# EXAMPLES #

#   23 -> 2 + 3 => 5

# DATA STRUCTURES #

#   - Integer
#   - Array to hold each digit individually

# ALGORITHM #

#   - define a method named `sum` that accepts an integer argument `num`
#   - store each individual number in an Array `digits`
#   - add each digit from digits and return the sum

# CODE #
=begin
# algorithm solution #
def sum(num)
  digits = num.to_s.chars
  sum = 0

  digits.each { |digit| sum += digit.to_i }
  
  sum
end
=end

# Ruby Sugar #
def sum(num)
  num.to_s.chars.map(&:to_i).inject(:+)
end

puts sum(23)
puts sum(23) == 5
puts
puts sum(496)
puts sum(496) == 19
puts
puts sum(123_456_789)
puts sum(123_456_789) == 45
puts puts
