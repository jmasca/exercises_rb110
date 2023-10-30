system 'clear'
# medium 1 - exercise 4

# PROBLEM #

#   - You have a bank of switches before you, numbered from 1 to n.
#     Each switch is connected to exactly one light that is initially off.
#     You walk down the row of switches and toggle every one of them.
#     You go back to the beginning, and on this second pass, you toggle
#     switches 2, 4, 6, and so on.
#     On the third pass, you go back again to the beginning and toggle switches
#     3, 6, 9, and so on.
#     You repeat this process and keep going until you have been through n
#     repetitions.

#   - Write a method that takes one argument, the total number of switches, and
#     returns an Array that identifies which lights are on after n repetitions.

#   input: integer (the total number of switches/num of repetitions)
#   output: array (which lights are ON after `n` repetitions)

#   rules:
#     explicit:
#       - a bank of switches numbered 1 to n
#         - n will be the argument passed into the method and will represent
#           the number of switches and also the number of repetitions
#       - pass 1 - all switches are toggled
#       - pass 2 - beginning with 2, every 2 are toggled (2, 4, 6, ...)
#       - pass 3 - beginning with 3, every 3 are toggled (3, 6, 9, ...)
#       - this continues until n repetitions are complete
#       - return an array that identifies which lights are on after n reps
#     implicit:
#       - the number of switches will always be a positive integer > 1

# EXAMPLES #

#   n = 5 lights (and 5 repetitions)

#   round 1: every light is turned on
#   round 2: lights 2 and 4 are now off; 1, 3, 5 are on
#   round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
#   round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
#   round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

#   The result is that 2 lights are left on, lights 1 and 4
#   The return value is [1, 4]

# DATA STRUCTURES #

#   - integer
#   - array

# ALGORITHM #

#   - define a method called `toggle_lights` that accepts an integer argument
#     represented by the name `num_of_lights`
#   - initialize an array `all_lights` with the values 1 through `num_of_lights`
#     - eg. `all_lights` => [1, 2, 3, 4, 5]
#   - initialize an empty array `lights_on`
#   - beginning with `1` and continuing through `num_of_lights`,
#     iterate `all_lights`
#     - for each pass through the iteration:
#         - use the modulus operator along with the current num of iteration to
#           determine which elements of `all_lights` are divisors
#         - if the element is a divisor of the current iteration num:
#           - check if the element is in `lights_on`
#             - if yes, remove the element from `lights_on`
#             - otherwise, add the element to `lights_on`
#     - continue until `all_lights` has been iterated `num_of_lights` times
#   - return `lights_on`

# CODE #

def toggle_lights(num_of_lights)
  all_lights = Array(1..num_of_lights)
  lights_on = []

  (1..num_of_lights).each do |num|
    all_lights.each do |light|
      if light % num == 0
        if lights_on.include?(light)
          lights_on.delete(light)
        else
          lights_on.push(light)
        end
      end
    end
  end
  lights_on
end

p toggle_lights(5)
p toggle_lights(10)
puts
p toggle_lights(1000)
puts
