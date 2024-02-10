system 'clear'
# advanced 1 - exercise 4

# (** need to finish algorithm ** ) #

# PROBLEM #

#   In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as
#     represented by a ruby Array of Arrays.

#   Matrix transposes aren't limited to 3 x 3 matrices, or even square
#     matrices.
#   Any matrix can be transposed by simply switching columns with rows.

#   Modify your transpose method from the previous exercise so it works with
#     any matrix with at least 1 row and 1 column.

#   input: nested Array
#   output: nested Array

#   rules:
#     explicit:
#       - modify previous exercises method to work with any matrix
#       - the size of the smallest matrix will be 1 row and 1 column
#     implicit:
#       - the max size of the matrix is undisclosed and should not be limited

# EXAMPLES #

#   [[1, 2, 3, 4]] -> [[1], [2], [3], [4]] -> switch column and rows 1x4 -> 4x1

#   [[1, 2, 3, 4]] <- 1 row of 4 columns
#     * becomes *
#   [
#     [1],
#     [2],
#     [3],
#     [4]
#   ] <- 4 rows with 1 column each

#   [[1, 2, 3], [4, 5, 6]] -> [[1, 4], [2, 5], [3, 6]] -> 2x3 -> 3x2

#   row -> number of nested arrays
#   column -> number of elements in each nested array

# DATA STRUCTURES #
#   - Array (nested)

# ALGORITHM #

#   - define a method `transpose` which accepts a nested array `matrix`
#     - initialize a `rows` variable and set it to the size of the matrix
#     - initialize a `columns` variable and set it to the size of index 0
#       (note: all arrays will be the same size, idx 0 is the size of idx 5)
#         (so it doesn't necessarily matter which array we choose to size)

#     - 

# CODE #

=begin
# my original solution #
def transpose(matrix)
  max_row_idx = matrix.size - 1
  max_column_idx = matrix[0].size - 1
  new_matrix = []

  0.upto(max_column_idx).each do |column_idx|
    tmp_array = []
    0.upto(max_row_idx).each do |row_idx|
      tmp_array << matrix[row_idx][column_idx]
    end
    new_matrix << tmp_array
  end
  new_matrix
end
=end

# cleaned up version (gained knowledge from LS Solution) #
def transpose(matrix)
  rows = matrix.size
  columns = matrix[0].size
  new_matrix = []

  (0...columns).each do |column_idx|
    new_row = (0...rows).map { |row_idx| matrix[row_idx][column_idx] }
    new_matrix << new_row
  end
  new_matrix
end

# ----------- #

puts transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]

puts puts
