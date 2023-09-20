system 'clear'
# easy 9 - exercise 01

# PROBLEM:
#   - Create a method that takes 2 arguments, an array and a hash. The array
#     will contain 2 or more elements that, when combined with adjoining
#     spaces, will produce a person's name. The hash will contain two keys,
#     :title and :occupation, and the appropriate values.

#   - Your method should return a greeting that uses the person's full name,
#     and mentions the person's title and occupation.

#   input: an Array and a Hash
#   output: String

#   explicit:
#     - 2 arguments - an Array and a Hash
#     - Array contains 2 or more elements
#         - must combine the elements with spaces to produce a persons name
#     - Hash contains two k/v pairs
#         - one pair is a :title (symbol form)
#         - one pair is an :occupation (in symbol form)
#     - return a greeting that uses the full name and mentions the title/occ.

#   implicit:
#     - the greeting should be in the form of a String
#     - the String is returned from the method
#     - Hash keys are symbols


#   EXAMPLES:
#     - ['John', 'Q', 'Doe']
#     - { title: 'Master', occupation: 'Plumber' })
#     => "Hello, John Q Doe! Nice to have a Master Plumber around."

#   DATA STRUCTURES:
#     - Array (holds the persons name)
#     - Hash (holds the persons title and occupation)
#     - String (hold the greeting message)

#   ALGORITHM:
#     - accepts two arguments into the method `greetings`
#       - one argument will be an array called `name`
#       - the second argument will be a hash called `attributes`
#     - initialize a string variable containing a greeting message `greeting`
#       - interpolate the array elements and the hash elements accordingly
#     - return the String

#   CODE:

def greetings(name, attributes)
  "Hello, #{name.join(' ')}! Nice to have a #{attributes[:title]} #{attributes[:occupation]} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
puts

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."

puts puts
