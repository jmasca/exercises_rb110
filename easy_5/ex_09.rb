# ex_09.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution:

def crunch(dup_str)
  new_str = ''
  dup_str.each_char { |char| new_str << char unless new_str[-1] == char }
  new_str
end

puts crunch('ddaaiillyy ddoouubbllee')
puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts
puts crunch('4444abcabccba')
puts crunch('4444abcabccba') == '4abcabcba'
puts
puts crunch('ggggggggggggggg')
puts crunch('ggggggggggggggg') == 'g'
puts
puts crunch('a')
puts crunch('a') == 'a'
puts
puts crunch('')
puts crunch('') == ''
