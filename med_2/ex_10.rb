system 'clear'
# medium 2 - exercise 10

# PROBLEM #

#   - Write a method that computes the difference between the square of the sum
#     of the first n positive integers and the sum of the squares of the first
#     n positive integers.

#   input: Integer
#   output: Integer

#   rules:
#     explicit:
#       - the method accepts an Integer argument
#       - compute the difference between:
#         - the square of the sum of the first n positive integers
#         - the sum of the squares of the first n positive integers
#     implicit:
#       - the integer passed will be the nth positive integer
#       - only positive integers greater than 0 will be passed
#       - return the computed difference

# EXAMPLES #

#   (3)
#   (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
#   (6)**2 - (1 + 4 + 9)
#   36 - 14
#   => 22

# DATA STRUCTURES #

#   - Integer
#   - Array (hold digits 1 through n)

# ALGORITHM #

#   - define a method `sum_square_difference`
#       - the method accepts integer argument `n`
#   - initialize an Array to hold digits 1 up to and including `n`, `nums`
#   - initialize a variable `square_sums`
#     - set `square_sums` to the square of the sum of all elements in `nums`
#   - initialize a variable 'sum_squares'
#     - set `sum_squares` to the sum of all elements squared in `nums`
#   - return the value of `square_sums` - `sum_squares`

def sum_square_difference(n)
  nums = Array(1..n)
  square_sums = (nums.sum)**2
  sum_squares = nums.map { |n| n**2 }.sum

  square_sums - sum_squares
end

puts sum_square_difference(3) == 22   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
puts
