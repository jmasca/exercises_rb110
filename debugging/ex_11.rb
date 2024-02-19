system 'clear'
# debugging - exercise 11

#   Josh wants to print an array of numeric strings in reverse numerical order.
#   However, the output is wrong.
#   Without removing any code, help Josh get the expected output.

=begin
given code:

arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

=end

# SOLUTION #

arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)

# Expected output: ["11", "10", "9", "8", "7"]
# Actual output: ["10", "11", "7", "8", "9"]
puts

# EXPLANATION #
#   The code only needs parantheses added due to the "tighter binding" of `p`
#     to `arr.sort` than `arr.sort` to `do..end`
