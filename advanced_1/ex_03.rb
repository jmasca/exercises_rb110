system 'clear'
# advanced 1 - exercise 3

# PROBLEM #

#   Write a method that takes a 3 x 3 matrix in Array of Arrays format and
#     returns the transpose of the original matrix.

#   Note that there is a Array#transpose method that does this -- you may not
#     use it for this exercise. You also are not allowed to use the Matrix
#     class from the standard library. Your task is to do this yourself.

#   Take care not to modify the original matrix: you must produce a new matrix
#     and leave the original matrix unchanged.

#   input: matrix (array of arrays; nested array)
#   output: new matrix (array of arrays; nested array)

#   rules:
#     explicit:
#       - method accepts a nested array (matrix)
#       - return a transpose of the nested array (matrix) provided
#       - the matrix is 3x3 (3 columns and 3 rows)
#       - the original matrix is not to be modified
#     implicit:
#       - each column becomes each row

# EXAMPLES #

#   original matrix ->    2 4 5
#                         3 1 6
#                         9 5 2

#   transposed matrix ->    2 3 9
#                           4 1 5
#                           5 6 2

# DATA STRUCTURES #
#   - Nested Array

# ALGORITHM #

#   - define a method named `transpose` that accepts a nested array 'matrix'
#     - initialize an array `new_matrix` with 3 elements,
#         each of which are arrays
#     - begin a loop through the array elements of `new_matrix` -
#       - first array (first element of new_matrix) -
#           - begin a loop from 0 to 2 - `y`
#             - begin another loop from 0 to 2 - `x`
#                - assign 3 elements to the first array -
#                - elements are in the format `matrix[`x`][`y`]
#             - end `x` loop after 2
#           - end `y` loop after 2
#       - repeat for the 3 array elements of `new_matrix`
#     - end outermost loop after 3 elements of `new_matrix` have been populated
#   - return `new_matrix`

def transpose(matrix)
  (0..2).map { |y| (0..2).map { |x| matrix[x][y] } }
end

=begin
def transpose!(matrix)
  y = -1
  new_matrix = matrix.map do |array|
    x = -1
    y += 1
    array.map do |ele|
      x += 1
      matrix[x][y]
    end
  end

  ele = -1
  matrix.map! do
    ele += 1
    new_matrix[ele]
  end
end



matrix = [[2, 4, 5],
          [3, 1, 6],
          [9, 5, 2]]

p transpose(matrix)
puts

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

puts puts
=end

# inside of matrix
#   mapping [0, 1, 2]
#     idx -> 0 -> 0,0 -> 0,1 -> 0,2
#         -> 1 -> 1,0 -> 1,1 -> 1,2
#         -> 2 -> 2,0 -> 2,1 -> 2,2

def transpose!(matrix)
  y = -1
  new_matrix = matrix.map do
    y += 1
    (0..2).map { |x| matrix[x][y] }
  end
  new_matrix.each_with_index { |new_arr, idx| matrix[idx] = new_arr }
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

p transpose!(matrix)

p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
