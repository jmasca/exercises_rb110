system 'clear'
# medium 2 - exercise 8

# PROBLEM #

#   - A featured number (something unique to this exercise) is an odd number
#     that is a multiple of 7, and whose digits occur exactly once each.
#     So, for example, 49 is a featured number, but 98 is not (it is not odd),
#     97 is not (it is not a multiple of 7), and 133 is not (the digit 3
#     appears twice).

#   - Write a method that takes a single integer as an argument, and returns
#     the next featured number that is greater than the argument. Return an
#     error message if there is no next featured number.

#   input: Integer
#   output: Integer (next featured number) or String (error message)

#   rules:
#     explicit:
#       - the method takes a single integer argument
#       - the method returns the next featured number (Integer)
#           or returns an error message if no featured number possible

#       - featured number:
#           - odd number
#           - multiple of 7
#           - digits occur exactly one time each (no repeating numbers)
#     implicit:
#       - error message:
#         - "There is no possible number that fulfills those requirements."
#       - the given number + 1 is the start of finding the featured number

# EXAMPLES #

#   12 -> next number divisible by 7 is 14
#      -> 14 is not odd -> next divisible is 21 and is odd => 21

# DATA STRUCTURES #

#   - Integer
#   - String (error message)
#   - Array (hold the featured number to verify uniqueness of digits)

# ALGORITHM #

#   - define a method named `featured` that accepts an Integer argument `number`
#   - begin iterating numbers from `number` up
#     - if the current number is divisible by 7:
#         - check to see if the number is odd
#           - continue to the next number if it is not off (even)
#           - otherwise, check for duplicate digits
#             - if duplicate digits are found, continue to the next number
#             - otherwise, return this number as the next featured number

# CODE #

def featured(number)
  loop do
    number += 1
    if number % 7 == 0 && number.odd?
      digits = number.to_s.chars
      return number if digits == digits.uniq
    end
    break if number >= 9_999_999_999
  end
  "There is no possible number that fulfills those requirements."
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts
puts featured(9_999_999_999)
# -> There is no possible number that fulfills those requirements
puts
