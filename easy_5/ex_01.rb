# ex_01.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution:

def ascii_value(str)
  total = 0
  str.each_char { |char| total += char.ord }
  total
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# --------------------------------------------------------------------------- #

loop do
  print "Enter char: "
  char = gets.chomp
  puts char.ord.chr == char
  break
end

# --------------------------------------------------------------------------- #
