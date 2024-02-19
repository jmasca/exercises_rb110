system 'clear'
# debugging - exercise 2

#   String#upcase! is a destructive method, so why does this code print HEY you
#     instead of HEY YOU?
#   Modify the code so that it produces the expected output.

=begin
given code:

def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

=end

# SOLUTION #

def shout_out_to(name)
  name.upcase!  # chars.each { |c| c.upcase! }  # not necessary
                # upcase! will update the chars directly, there's no need
                # to call `chars.each` -> this is just upcasing! each specifc
                # char rather than the variable `name`

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

puts
