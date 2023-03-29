# ex_09.rb
system "clear"
# --------------------------------------------------------------------------- #
# LS solution:
# --------------------------------------------------------------------------- #

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  str = ''
  loop do
    num, remainder = num.divmod(10)
    str.prepend(DIGITS[remainder])
    break if num == 0
  end
  str
end

puts integer_to_string(9) == "9"
puts integer_to_string(15) == "15"

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'

# --------------------------------------------------------------------------- #

# This solution is by LS.
# Mine was similar, but without the more useful divmod method.

# --------------------------------------------------------------------------- #

# --------------------------------------------------------------------------- #
 #  IMPORTANT NOTES ON THE METHOD NAMING IN RUBY, SPECIFICALLY, !, THE BANG  #
# --------------------------------------------------------------------------- #
=begin

One thing to note here is the String#prepend method; unlike most string mutating methods, the name of this method does not end with a !. However, it is still a mutating method - it changes the string in place.

This is actually pretty common with mutating methods that do not have a corresponding non-mutating form. chomp! ends with a ! because the non-mutating chomp is also defined. prepend does not end with a ! because there is no non-mutating form of prepend.

  =end
  