system "clear"
# ex_05.rb

# question: Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

## problem:
#   - write a method that takes two integer arguments
#     - argument 1 is the starting number
#     - argument 2 is the ending number
#   - beginning with the starting number, print all numbers upto/including the
#     ending number
#     - however:
#         - if the number is divisible by 3, print "Fizz" instead of the number
#         - if the number is divisible by 5, print "Buzz" instead of the number
#         - if divisible by 3 and 5, print "FizzBuzz" instead of the number

# input: integers (beginning and ending numbers)
# output: combination of integers and strings

# rules:
#   - explicit:
#       - the first number for output is the beginning number (argument 1)
#       - the last number for output is the ending number (argument 2)
#       - all numbers should be printed between the beginning/ending numbers
#       - nums divisible by 3 should print "Fizz" instead of the num
#       - nums divisible by 5 should print "Buzz" instead of the num
#       - nums divisible by 3 and 5 should print "FizzBuzz" instead of the num
#   - impicit:
#       - separate the output by commas
#       - the return value is not relevant

## examples:
#   1, 15 => 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

#   1 => 1
#   2 => 2
#   3 => Fizz (3 % 3 == 0)
#   4 => 4
#   5 => Buzz (5 % 5 == 0)
# ...
#   15 => FizzBuzz (3 % 3 == 0 && 5 % 5 == 0)

## data structures:
#   - string, integer

## algorithm:

#   - def a method named `fizzbuzz` that accepts two integer arguments
#     - the beginning number and the ending number
#   - starting with the beginning number, iterate through all numbers up to the ending number. with each iteration:
#     - check if the num is divisble by 3
#         - if so, print "Fizz"
#     - check if the num is divisible by 5
#         - if so, print "Buzz"
# NOTE: If num is divisble by 3 and 5, FizzBuzz should be printed #
#     - if the num is not divisible by 3 or 5, print the number
# the output for each num should be separated by a comma and a space
#   - return from the method after all numbers have been iterated through

## code:

def fizzbuzz(num1, num2)
  output = Array(num1..num2)
  output.map! do |n|
    tmp = ""
    tmp += "Fizz" if n % 3 == 0
    tmp += "Buzz" if n % 5 == 0
    tmp.empty? ? n : tmp
  end

  puts output.join(', ')
end

def fizzbuzz1(num1, num2)
  (num1..num2).each do |n|
    tmp = ""
    tmp += "Fizz" if n % 3 == 0
    tmp += "Buzz" if n % 5 == 0

    if n == num2
      puts (tmp.empty? ? n : tmp)
    else
      print (tmp.empty? ? n : tmp)
      print ', '
    end
  end
end

puts "--- FIRST FIZZBUZZ ---\n"
fizzbuzz(1, 15)

puts "\n\n--- SECOND FIZZBUZZ1 ---\n"
fizzbuzz1(1, 15)

# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz



puts puts


## LS Solution and Explanation ##
=begin

def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

# ---

Notice the case statement doesn't have a value next to case for comparison. When using a case statement in this form, we get the same functionality as if we used an if/elsif/else conditional.

Also, only the case statement is in the fizzbuzz_value method. This works because a case statement returns the value from the last line of the matched when branch. For example, if a number is divisible only by 3, then 'Fizz' is returned from the case statement. That return value then acts as the return value for the method, since there are no other lines after this case statement.
=end
