system 'clear'
# advanced 1 - exercise 6

# PROBLEM #
=begin
#   The following code:

def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# is expected to print:

[]
[21]
[9, 16]
[25, 36, 49]

#   However, it does not. Obviously, there is a bug. Find and fix the bug, then
#     explain why the buggy program printed the results it did.

# what the buggy program actually prints:

[]
nil
nil
nil

=end

# NOTE: I will forego PEDAC on this particular problem. #

# CODE #

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
puts my_method([]) == []
puts

p my_method([3])
puts my_method([3]) == [21]
puts

p my_method([3, 4])
puts my_method([3, 4]) == [9, 16]
puts

p my_method([5, 6, 7])
puts my_method([5, 6, 7]) == [25, 36, 49]
puts

puts

# EXPLANATION #
=begin

The only error found in the code was a lack of condition for the elsif clause. From looking at the intended output we can see the `else` clause should execute upon a single element, whereas the elsif clause should execute for multiple elements. I added a condition to the elsif to check for a size greater than 1, meaning there are more than 1 element inside of the given array. This allows the elsif to execute for multiple element arrays and allows the else to execute for any array with multiple elements.

=end
