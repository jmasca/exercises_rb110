system 'clear'
# easy 9 - exercise 05

# PROBLEM #

#   - Write a method that takes a first name, a space, and a last name passed
#     as a single String argument, and returns a string that contains the last
#     name, a comma, a space, and the first name.

#   input: String ("first_name last_name")
#   output: String ("last_name, first_name")

#   explicit:
#     - a single string argument will contain:
#         - a first name, a space, and a last name
#     - return a string that contains:
#         - a last name, a comma, a space, and a first name

#   implicit:
#     - 

# EXAMPLES #

#   - 'Joe Roberts' => 'Roberts, Joe'

# DATA STRUCTURE #

#   - String
#   - Array to split the string

# ALGORITHM #

#   - create a method named `swap_name` that accepts a string argument `name`
#   - split `name` into words and store in an array `names`
#   - return a string with the last element of `names`, a comma, a space, and 
#     then the first element of `names`

# CODE #

def swap_name(name)
  # names = name.split
  # "#{names[1]}, #{names[0]}"
  name.split.reverse.join(', ')
end

puts swap_name('Joe Roberts')
puts swap_name('Joe Roberts') == 'Roberts, Joe'

puts
