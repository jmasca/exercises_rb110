system 'clear'
# easy 9 - exercise 07

# PROBLEM #

#   - Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

#   - Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

#   Numerical Score -- Letter Grade
#           90 <= score <= 100  'A'
#           80 <= score < 90    'B'
#           70 <= score < 80    'C'
#           60 <= score < 70    'D'
#           0 <= score < 60     'F'

#   input: Integers (3 arguments representing scores)
#   output: String (representing the letter grade of the integers average)

#   explicit:
#     - determine the average of three given scores (all integers)
#     - return a letter grade associated with the average score
#     - test values are all from 0-100
#     - GRADES -
#         90 - 100 => A
#         80 - 89 => B
#         70 - 79 => C
#         60 - 79 => D
#         0 - 59 => F

#   implicit:
#     - calculate the average:
#         - add 3 scores together and divide by 3

# EXAMPLES #

#   -> 95, 90, 93 == "A"
#   -> 50, 50, 95 == "D"

# DATA STRUCTURES #

#   - Integers
#   - String
#   - Hash

# ALGORITHM #

#   - define a method named `get_grade` that accepts 3 Integer arguments
#       - the arguments are named `g1`, `g2`, and `g3`
#   - initialize a hash named `letter_grades` and store the letter as the key
#     and the grade range is the value
#   - add `g1`, `g2`, and `g3` together and divide the result by 3
#       - store the result in a variable named `avg`
#   - return the key from `letter_grades` that corresponds to where `avg` falls
#     within the values

# CODE #

def get_grade(g1, g2, g3)
# hash option #
  letter_grades = { 'A' => (90..100), 'B' => (80...90),
                    'C' => (70...80), 'D' => (60...70), 'F' => (0...60) }

  avg = (g1 + g2 + g3) / 3
  letter_grades.each do |letter, grade|
    return letter if grade.include?(avg)
  end

=begin
# case statement option #
  avg = (g1 + g2 + g3) / 3

  case avg
  when (90..100) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  else                'F'
  end
=end
end

puts get_grade(95, 90, 93)
puts get_grade(95, 90, 93) == "A"
puts
puts get_grade(50, 50, 95)
puts get_grade(50, 50, 95) == "D"
puts
puts
