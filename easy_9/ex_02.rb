system 'clear'
# easy 9 - exercise 02

# PROBLEM #

#   - A double number is a number with an even number of digits whose left-side
#     digits are exactly the same as its right-side digits. For example, 44,
#     3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

#   - Write a method that returns 2 times the number provided as an argument,
#     unless the argument is a double number; double numbers should be returned
#     as-is.

#   input: integer
#   output: integer

#   explicit:
#     - an integer as an argument
#     - double numbers are returned as-is
#         double number:
#             - even number of digits
#             - when split evenly into two parts down the middle
#               the left-side is exactly the same as the right-side
#     - all other numbers are multiplied by 2 and the result is returned

#   implicit:
#     - n/a

# EXAMPLES #

#   37 == 74
#   44 == 44
#   334433 == 668866
#   7676 => [76] == [76] => 7676

# DATA STRUCTURES #

#   - integer
#   - array to hold each half of the given integer for comparison

# ALGORITHM #

#   - accept an integer argument named `num`
#   - check the number of digits in `num`
#     - if there're an odd number of digits, multiply `num` by 2, return result
#     - even number of digits:
#         - split the number evenly into two parts down the middle
#         - compare the left-side of the numbers to the right-side
#             - if the numbers are equal, return `num` as-is
#             - otherwise, multiply `num` by 2 and return the result

# CODE #

def twice(num)
  return (num * 2) if num.to_s.size.odd?

  halves = num.to_s.chars
  mid_idx = (halves.size / 2) - 1

  if halves[0..mid_idx].join().to_i == halves[(mid_idx + 1)..].join().to_i
    return num
  end

  return num * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
