# ex_07.rb
system 'clear'
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that takes an Array of integers as input, multiplies all
#     the numbers together, divides the result by the number of entries in the
#     Array, and then prints the result rounded to 3 decimal places. Assume
#     the array is non-empty.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - given an array of integers, multiply the numbers together and then divide
#     the result by the number of elements in the array. Print the result
#     rounded to 3 decimal places.

#   input: Array (non-empty, at least one integer)
#   output: Float (rounded to 3 decimal places)

#   rules:
#     explicit:
#       - array will be of integers only, with at least one element
#       - multiply the integers together and divide by the number of elements
#       - round the result to 3 decimal places
#       - print the result
#     implicit:
#       - 3 decimals are always shown, even when .000
#       - output should contain "The result is " and then the result float

# --- EXAMPLES --- #

#   [3, 5]
#   3 * 5 = 15
#   15 / 2 = 7.5
#   7.5 rounded -> 7.500

# --- DATA STRUCTURES --- #

#   - Array
#   - Integer
#   - Float

# --- ALGORITHM --- #

#   - initialize a variable to 1 to hold to product of the elements
#   - begin with the first integer from the array
#     - if this is the only element:
#       - convert integer to float and round to 3 decimal places
#     - otherwise:
#       - multiply each element by the next until all elements multiplied
#       - divide that result by the number of elements (use float eg. / 5.0)
#       - round the result, as a float, to 3 decimal places (ruby -> '%.3f')
#   - print "The result is " and then the floating point result

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:

def show_multiplicative_average(arr)
  result = 1
  arr.each { |int| result *= int }
  result /= arr.size.to_f
  puts "The result is #{format('%.3f', result)}"
end

# solution using Enumerable#inject:

def show_multiplicative_average1(arr)
  result = (arr.inject(:*)) / (arr.size.to_f)
  puts "The result is #{format('%.3f', result)}"
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
puts

show_multiplicative_average1([3, 5])               # => The result is 7.500
show_multiplicative_average1([6])                  # => The result is 6.000
show_multiplicative_average1([2, 5, 7, 11, 13, 17])# => The result is 28361.667
puts

# --------------------------------------------------------------------------- #
