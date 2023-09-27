system 'clear'
# easy 9 - exercise 8

# PROBLEM #

#   - Write a method which takes a grocery list (array) of fruits with
#     quantities and converts it into an array of the correct number of each
#     fruit.

#   input: Array (fruit, quantity)
#   output: Array (fruit, fruit, fruit)

#   explicit:
#     - a method that accepts an array argument
#       - the given array will be nested with pairs of fruit and their
#         quantities
#     - convert the given array into a new array
#       - the new array will consist of each fruit listed the number of
#         times specified by the quantity given

# EXAMPLES #

#   - [[apples, 3], [orange, 1]] => [apples, apples, apples, orange]

# DATA STRUCTURES #

#   - Nested Array
#   - Array
#   - String
#   - Integer

# ALGORITHM #

#   - define a method named `buy_fruit` that accepts an array argument
#       - the array parameter will be named `list`
#   - initialize an empty array named `bag`
#   - iterate through each nested array of the array `list`
#     - with each nested array, add the `fruit` to `bag` the number of times 
#       specified by the integer representing the quantity
#   - after all elements iterated, return `bag`

# CODE #

# original #
=begin
def buy_fruit(list)
  bag = []
  list.each { |item| item[1].times { bag << item[0] } }
  bag
end
=end

# better readability #
=begin
def buy_fruit(list)
  bag = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { bag << fruit }
  end

  bag
end
=end

# ruby sugar #
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

puts puts
