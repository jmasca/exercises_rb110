system 'clear'
# medium 1 - exercise 8

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

#   - Write a recursive method that computes the nth Fibonacci number, where
#     nth is an argument to the method.

#   input: integer (the nth number of the Fibonacci series)
#   output: integer (a sum of the nth Fibonacci numbers)

#   rules:
#     explicit:
#       - the method is to be a recursive method (it calls itself)
#       - the nth number of the Fibonacci series is the argument to the method
#       - sum all numbers of the series up to/including the nth
#       - return the sum
#     implicit:
#       - the first two numbers of the sequence are both 1:
#           - therefore, return 1 if the nth is 2 or less
#       - beginning at the 3rd Fibonacci number use:
#           - F(n - 1) + F(n - 2)
#           - this is the sum of the previous two numbers of the sequence
#       - we will assume n will always be greater than or equal to 1, but
#         will include a nil return value for 0 or less

# EXAMPLES #

#   F(1) => 1
#   F(2) => 1
#   F(3) => F(3 - 1) + F(3 - 2)
#        => F(2) + F(1)
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
#     - return nil if `n` <= 0
#     - return 1 if `n` <= 2

#     - for all other values of `n`:
#       - call `fibonacci` with (`n` - 1) and (`n` - 2)
#       - sum the return values of both and return this value

# CODE #

def fibonacci(n)
  return nil if n <= 0
  return 1 if n <= 2

  fibonacci(n - 1) + fibonacci(n - 2)
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
puts
