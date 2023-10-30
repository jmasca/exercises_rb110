system 'clear'
# medium 1 - exercise 5

# PROBLEM #

#   - Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

#   input: odd integer
#   output: string (4-point diamond in n x n grid)

#   rules:
#     explicit:
#       - method will display/print diamond (return value irrelevant)
#       - odd integer will always be supplied as an argument
#     implicit:
#       - the diamond is drawn/represented/printed by using `*`
#       - format the asterisk so they're centered in `n` whitespace

# EXAMPLES #

#   diamond(3)    # grid is 3 x 3
#      *
#     ***
#      *

# DATA STRUCTURES #
#   - integer
#   - string

# ALGORITHM #

#   - define a method called `diamond` that accepts an integer argument `d_size`
#   - beginning with `1` up to `d_size`:
#     - check the current num is odd
#     - print an asterisk the number of times specified by num
#         - pad the asterisk in whitespace of width `d_size`
#   - beginning with `d_size - 2` down to `1`:
#     - print an asterisk the number of times specified by num
#         - pad the asterisk in whitespace of width `d_size`
#   - continue until full diamond is printed

# CODE #

def diamond(d_size)
  1.upto(d_size) do |num|
    puts ("*" * num).center(d_size) if num.odd?
  end
  (d_size - 2).downto(1) do |num|
    puts ("*" * num).center(d_size) if num.odd?
  end
end

=begin
diamond(1)
puts
diamond(3)
puts
diamond(9)
puts puts
=end

diamond(15)
puts puts
