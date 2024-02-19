system 'clear'
# debugging - exercise 1

#   Our countdown to launch isn't behaving as expected. Why?
#   Change the code so that our program successfully counts down from 10 to 1.

=begin
given code:

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'

=end

# SOLUTION #

def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)   # the result of the call to `decrease` needed
end                             # to be assigned to the `counter` variable

puts 'LAUNCH!'
puts

# further exploration: refactoring code to show 10 once #
# instead of 10.times, we'll use counter.times

def decrease(counter)
  counter - 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
puts
