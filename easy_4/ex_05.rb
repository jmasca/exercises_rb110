# ex_05.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution:

def multisum(num)
  multiples = (1..num).select { |n| n % 3 == 0 || n % 5 == 0 }
  multiples.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
