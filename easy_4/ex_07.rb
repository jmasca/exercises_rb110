# ex_07.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution:

CONVERSION = {
              '0' => 0, '1' => 1,
              '2' => 2, '3' => 3,
              '4' => 4, '5' => 5,
              '6' => 6, '7' => 7,
              '8' => 8, '9' => 9,
              }

def string_to_integer(str)
  digits = 0
  str.chars.each { |c| digits = (digits * 10) + CONVERSION[c] }
  digits
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

# --------------------------------------------------------------------------- #

#                          good notes provided by LS                          #

# The actual computation of the numeric value of string is mechanical. We take
# each digit and add it to 10 times the previous value, which yields the
# desired result in almost no time. For example, if we have 4, 3, and 1, we
# compute the result as:

#   10 * 0 + 4  -> 4
#   10 * 4 + 3  -> 43
#   10 * 43 + 1 -> 431
