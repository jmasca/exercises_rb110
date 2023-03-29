# ex_08.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution:

STR_TO_INT = {
              '0' => 0, '1' => 1,
              '2' => 2, '3' => 3,
              '4' => 4, '5' => 5,
              '6' => 6, '7' => 7,
              '8' => 8, '9' => 9,
             }

def string_to_signed_integer(str)
  number = 0
  if str[0] == '-'
    str.slice!(0)
    str.chars.each { |c| number = ((number * 10) + STR_TO_INT[c]) }
    number *= -1
  else
    str.slice!(0) if str.chars[0] == '+'
    str.chars.each { |c| number = ((number * 10) + STR_TO_INT[c]) }
  end
  number
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
