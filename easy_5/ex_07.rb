# ex_07.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution: (same as ex_06, but excluding non-letters):

def word_sizes(str)
  size_counts = Hash.new(0)
  str.split.each do |word|
    word = word.delete('^a-zA-Z')
    size_counts[word.size] += 1
  end
  size_counts
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
