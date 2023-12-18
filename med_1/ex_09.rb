system 'clear'
# medium 1 - exercise 9

# PROBLEM #

#   > The Fibonacci series is a sequence of numbers starting with 1 and 1
#     where each number is the sum of the two previous numbers:
#     the 3rd Fibonacci number is 1 + 1 = 2,
#     the 4th is 1 + 2 = 3,
#     the 5th is 2 + 3 = 5, and so on. 

#   > In mathematical terms:
#     F(1) = 1
#     F(2) = 1
#     F(n) = F(n - 1) + F(n - 2) where n > 2

#   - Write a procedural method that computes the nth Fibonacci number, where
#     nth is an argument to the method.

#   input: integer (the nth number of the Fibonacci series)
#   output: integer (a sum of the nth Fibonacci numbers)

#   rules:
#     explicit:
#       - the method is to be procedural method (no recursive calls)
#       - the nth number of the Fibonacci series is the argument to the method
#       - sum all numbers of the series up to/including the nth
#       - return the sum
#     implicit:
#       - we will assume n will always be greater than or equal to 1

# EXAMPLES #

#   F(1) => 1
#   F(2) => (2 - 1) + (2 - 2)
#        => 1 + 0
#        => 1
#   F(3) => (first_num) + (second_num)
#        => 1 + ((2 - 1) + (2 - 2))
#        => 1 + (1 + 0)
#        => 1 + 1
#        => 2
#   F(4) => F(4 - 1) + F(4 - 2)
#        => F(3) + F(2)
#        => 2 + 1
#        => 3

# DATA STRUCTURES #
#   - integers

# ALGORITHM #

#   - define a method named `fibonacci` that accepts integer argument `n`
#     - return 1 if `n` <= 2

#   - assign a variable to hold the total, named `sum`, to `0`
#   - assign `1` to a variable `first_num`
#   - assign `1` to a variable `second_num`
# LOOP #
#     - assign `sum` the value of `first_num` + `second_num`
#     - assign `first_num` the value from `second_num`
#     - assign `second_num` the value from `sum`
#   - after iterating (`n` - 2) times, return `sum`

# CODE #

def fibonacci(n)
  return 1 if n <= 2
  sum = 0
  first_num, second_num = 1, 1

  (n - 2).times do
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

=begin
# LS inspired Solution #

def fibonacci(n)
  return 1 if n <= 2
  sum = 0
  first_num, second_num = [1, 1]

  3.upto(n) do
    first_num, second_num = [second_num, first_num + second_num]
  end
  second_num
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
# puts fibonacci(100_001) # => 4202692702.....8285979669707537501
puts
=end
