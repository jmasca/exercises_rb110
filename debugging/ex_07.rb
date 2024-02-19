system 'clear'
# debugging - exercise 7

#   We wrote a neutralize method that removes negative words from sentences.
#     However, it fails to remove all of them. What exactly happens?

=begin
given code:

def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

=end

# SOLUTION #

def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! { |word| negative?(word) }

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

puts

# EXPLANATION #

#   Whats happening is when the `neutralize` method is ran on the word `dull`,
#     it gets deleted, however, that removes the word from the array `words` and
#     causes the elements in the array to change position. On the next iteration
#     the subsequent word is skipped, in this case, `boring`, is the one we
#     notice. This happens after each deletion, though.
#   One way to fix the issue is to use the `reject` method on the `words` array
#     and change the condition slightly. This will choose only words that return
#     `false` from the `negative?` list. (Note: use the destructive version.)
#   words.reject! { |word| negative(word) }
