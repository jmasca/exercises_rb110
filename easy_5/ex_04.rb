# ex_04.rb
system "clear"
# --------------------------------------------------------------------------- #
=begin
# my solution:

def swap(str)
  swapped = str.split.map do |word|
            tmp = word[0]
            word[0] = word[-1]
            word[-1] = tmp
            word
          end
  swapped.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
=end
# --------------------------------------------------------------------------- #
=begin
# LS solution: using a separate method and multiple assignment syntax:

def swap_first_and_last_chars(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(str)
  swapped = str.split.map do |word|
            swap_first_and_last_chars(word)
          end
  swapped.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
=end
# --------------------------------------------------------------------------- #

# further exploration: modifying whats passed into the helper method:

def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap(str)
  swapped = str.split.map do |word|
            swap_first_last_characters(word[0], word[-1])
          end
  swapped.join(' ')
end

puts swap('Abcde') == 'ebcdA'

# NOTE: This does not work properly because we are passing in the values of
#       each character we want swapped. This means the helper method will not
#       mutate the original words, but simply swap the letters passed into it
#       with no side-effects.
