system 'clear'
# medium 2 - exercise 11

# PROBLEM #

#   - Write a method that takes a positive integer as an argument and returns
#     true if the number is prime, false if it is not prime.

#   Notes: A prime number is a positive number that is evenly divisible only by
#          itself and 1. Thus, 23 is prime since its only divisors are 1 and
#          23. However, 24 is not prime since it has divisors of 1, 2, 3, 4, 6,
#          8, 12, and 24. Note that the number 1 is not prime.

#   input: Integer
#   output: Boolean (`true` if prime, `false` if not prime)

#   rules:
#     explicit:
#       - a prime number must be positive
#       - a prime number can only be divisible by 1 and itself
#       - 1 is not considered a prime number
#       - the method will accept a positive integer argument (only pos numbers)
#       - return `true` for prime numbers
#       - return `false` for non-prime numbers
#     implicit:
#       - n/a

# EXAMPLES #

#   4 -> 4/1 == 4, 4/2 == 2, 4/4 == 1 (3 divisors, not prime) == false

#   5 -> 5/1 == 5, 5/5 == 1 (only 2 divisors, is prime) == true

# DATA STRUCTURES #

#   - Integer
#   - Boolean

# ALGORITHM #

#   - define a method named `is_prime` that accepts a pos int argument `num`
#     - return false if `num` is 1
#     - initialize a counter variable named `even_division_count`, set to 0
#     - initialize a variable to divide `num` by named `divisor`, set to `num`
#     - begin a loop -
#         - divide `num` by `divisor`
#           - if the remainder is 0, increase `even_division_count` by 1
#           - subtract 1 from `divisor`
#     - end loop after being executed with `divisor` equal to 1

#     - return the boolean value of even_division_count being equal to 2

# CODE #

def is_prime(num)
  return false if num == 1
  even_division_count = 0

  num.downto(1) { |divisor| even_division_count += 1 if num % divisor == 0 }
  even_division_count == 2
end

puts(is_prime(1) == false)              # true
puts(is_prime(2) == true)               # true
puts(is_prime(3) == true)               # true
puts(is_prime(4) == false)              # true
puts(is_prime(5) == true)               # true
puts(is_prime(6) == false)              # true
puts(is_prime(7) == true)               # true
puts(is_prime(8) == false)              # true
puts(is_prime(9) == false)              # true
puts(is_prime(10) == false)             # true
puts(is_prime(23) == true)              # true
puts(is_prime(24) == false)             # true
puts(is_prime(997) == true)             # true
puts(is_prime(998) == false)            # true
puts(is_prime(3_297_061) == true)       # true
puts(is_prime(23_297_061) == false)     # true
puts puts
