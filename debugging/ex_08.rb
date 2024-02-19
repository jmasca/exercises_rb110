system 'clear'
# debugging - exercise 8

#   The following code prompts the user to set their own password if they
#     haven't done so already, and then prompts them to login with that
#     password. However, the program throws an error.
#   What is the problem and how can you fix it?

#   Once you get the program to run without error, does it behave as expected?
#     Verify that you are able to log in with your new password.

=begin
given code:

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  set_password
end

verify_password

=end

# SOLUTION #

password = nil

def set_password
  puts 'What would you like your password to be?'
  gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)

puts

# EXPLANATION #

#   There are a couple of things going on with this particular code. First, the
#     password variable is localized, so unless we pass the password into the
#     `verify_password` method, we will never be able to access the set
#     password. Secondly, even though password is changed locally in the
#     `set_password` method, outside of this scope when we go back to main,
#     password is still `nil` since we didn't assign it here.
#   To correct the code we will implicitly return the users input back to main
#     and assign it to `password` right there in the if statement. Then, we will
#     be sure to pass `password` to the `verify_password` method to confirm.
#     We will also have to modify the method to accept password as a parameter.
