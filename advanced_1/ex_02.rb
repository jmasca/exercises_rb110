system 'clear'

#################################### TO DO ####################################

# finish algorithm based off of my solution
# try to rewrite a version of LS Solution without looking at it

# (moving on to ex_03) #

###############################################################################

# advanced 1 - exercise 2

# PROBLEM #

#   - Write a method that displays an 8-pointed star in an nxn grid, where n is
#     an odd integer that is supplied as an argument to the method. The
#     smallest such star you need to handle is a 7x7 grid.

#   input: Integer
#   output: String (asterisks formatted as an 8-pointed star)

#   rules:
#     explicit:
#       - method accepts an odd Integer value
#       - smallest star will be 7x7
#       - display an 8-pointed star in an n x n grid, n is the provided value
#     implicit:
#       - the star is displayed with asterisks (*)
#       - the middle row has n asterisks with no whitespace
#       - all other rows use 3 asterisks:
#         - the top and bottom rows are spaced equally at n width
#         - all other rows are 2 less than n, until no whitespace

# EXAMPLES #

#     (7)
#   *  *  *
#    * * *
#     ***
#   *******
#     ***
#    * * *
#   *  *  *

# DATA STRUCTURES #

#   - Integer
#   - String

# ALGORITHM #

#   - define a method named `star` that accepts Integer argument `grid_size`
#   - initialize an `inner_spaces` variable set to (`grid_size` / 2) + 1
#   - initialize an `outer_spaces` variable set to 0

=begin
def star(grid_size)
  inner_spaces = (grid_size / 2) - 1
  outer_spaces = 0

  1.upto(grid_size / 2) do
    puts format_line(inner_spaces, outer_spaces)
    inner_spaces -= 1
    outer_spaces += 1
  end

  puts '*' * grid_size
  inner_spaces += 1
  outer_spaces -= 1

  (grid_size / 2).downto(1) do
    puts format_line(inner_spaces, outer_spaces)
    inner_spaces += 1
    outer_spaces -= 1
  end
end

def format_line(inner_spaces, outer_spaces)
  (' ' * outer_spaces) + '*' + (' ' * inner_spaces) +
  '*' + (' ' * inner_spaces) + '*' + (' ' * outer_spaces)
end
=end

# LS Solution #

def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

star(7)
puts
star(9)
puts
