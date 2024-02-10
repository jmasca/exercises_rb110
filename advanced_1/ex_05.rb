system 'clear'
# advanced 1 - exercise 5

# PROBLEM #

#   A 90-degree rotation of a matrix produces a new matrix in which each side
#     of the matrix is rotated clockwise by 90 degrees.

#   Write a method that takes an arbitrary matrix and rotates it 90 degrees
#     clockwise.

#   input: matrix (nested array, array of arrays)
#   output: rotated matrix

#   rules:
#     explicit:
#       - accept a matrix into the method
#       - the matrix can be any arbitrary size
#       - must rotate the matrix 90 degrees clockwise
#       - return the newly rotated matrix
#     implicit:
#       - 2x3 becomes 3x2, 3x3 stays 3x3
#       - no min or max size provided

# EXAMPLES #

#   3  4  1
#   9  7  5

# becomes

#   9  3
#   7  4
#   5  1

#   the rows still become the columns and vice versa, but rotated

# DATA STRUCTURE #
#   - nested arrays

# ALGORITHM #

#   - define a method named `rotate90` that accepts `matrix`
#     - initialize an empty array variable `rotated_matrix`
#     - initialize a `rows` variable to the size of matrix
#     - initialize a `columns` variable to the size of an inner array
#     - begin a loop from 0 up to, but not including, `columns` -
#       - begin another loop from (`rows` - 1) down to 0 -
#         - set the result of each `matrix[row][column]` to `new_row`
#       - place `new_row` into `rotated_matrix`
#     - return `rotated_matrix`
#   -end of method

# CODE #

def rotate90(matrix)
  rotated_matrix = []
  rows = matrix.size
  columns = matrix.first.size

  (0...columns).each do |column|
    new_row = (rows - 1).downto(0).map { |row| matrix[row][column] }
    rotated_matrix << new_row
  end
  rotated_matrix
end

=begin
matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
puts
=end

# FURTHER EXPLORATION #
# this method accepts a matrix and a number of degrees in 90 degree increments
# meaning, the degree options are 90, 180, 270, 360, etc.
# the method also assumes that at least 1 rotation of 90 degrees is given
# 0 degrees is not an acceptable argument
# final note: the method utilizes recursive calls of the rotate90 method

def rotate(matrix, degrees)
  rotated_matrix = rotate90(matrix)
  rotations = (degrees / 90) - 1

  rotations.downto(1).each { rotated_matrix = rotate90(rotated_matrix) }
  rotated_matrix
end

matrix_to_rotate = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

degrees_90 = [
  [3, 4, 1],
  [9, 7, 5],
  [6, 2, 8]
]

degrees_180 = [
  [6, 9, 3],
  [2, 7, 4],
  [8, 5, 1]
]

degrees_270 = [
  [8, 2, 6],
  [5, 7, 9],
  [1, 4, 3]
]

p rotate(matrix_to_rotate, 90) == degrees_90
p rotate(matrix_to_rotate, 180) == degrees_180
p rotate(matrix_to_rotate, 270) == degrees_270
p rotate(matrix_to_rotate, 360) == matrix_to_rotate
p rotate(matrix_to_rotate, 1350) == degrees_270
puts
