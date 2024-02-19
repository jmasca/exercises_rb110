system 'clear'
# debugging - exercise 6

#   We wrote a method for moving a given number of elements from one array to
#     another.
#   We decide to test it on our todo list, but invoking move on line 11 results
#     in a SystemStackError.

#   What does this error mean and why does it happen?

=begin
given code:

def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

=end

# SOLUTION #

def move(n, from_array, to_array)
  return if n == 0 || from_array.empty?   # we needed to add a condition(s)
  to_array << from_array.shift            # to end the recursive method calls
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)
p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

puts
# further exploration #
todo_small = ['study']
done = ['apply sunscreen', 'go to the beach']
move(2, todo_small, done)

p todo_small # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

puts

## EXPLANATION ##

# the stack error given is going to occur when the stack is overflowing, meaning
# we have too many consectuive calls to another place in the code

#   -> too deep
#   -> level 99
#   ...
#   -> level 1
#   -> main

# the above would be an example of this where each level is a new position
# we've jumped to in code, whether thats a method, a block, a loop, etc.
# again, this is referring to consecutive calls, like an infinte loop or in
# the examples case, infinite method calls

# we can correct this method by adding a condition to end the method calls,
# such as `return if n == 0`, and then we will return continue to our code.

# further exploration #
# if the from array is smaller than to to array then we will have nil's added to
#  our array unless we add another breaking condition such as from_array.empty?
