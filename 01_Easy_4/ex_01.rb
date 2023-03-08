# ex_01.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution:

def short_long_short(str_1, str_2)
  str_arr = [str_1, str_2].sort_by { |str| str.size }
  str_arr[0] + str_arr[1] + str_arr[0]
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"

# --------------------------------------------------------------------------- #

# a solution using if/else:

def short_long_short(str_1, str_2)
  if str_1.size < str_2.size
    str_1 + str_2 + str_1
  else
    str_2 + str_1 + str_2
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"

## Clarity is more important than density. ##
