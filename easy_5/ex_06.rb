# ex_06.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution:

def word_sizes(str)
  size_counts = Hash.new(0)
  str.split.each do |word|
    size_counts[word.size] += 1
  end
  size_counts
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
