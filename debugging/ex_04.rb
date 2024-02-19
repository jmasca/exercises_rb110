system 'clear'
# debugging - exercise 4

#   The reverse_sentence method should return a new string with the words of
#     its argument in reverse order, without using any of Ruby's built-in
#     reverse methods.

#   However, the code below raises an error. Change it so that it behaves as
#     expected.

=begin
given code:

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = words[i] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

=end

# SOLUTION 1 #

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])    # `+ reversed_words` can be switched.
    i += 1                              # add each word to the front of the
  end                                   # previous word to correct the method

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

puts

## SOLUTION 2 ##

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words  # both must be arrays to be
    i += 1                                        # concatenated together. can
  end                                             # not be string & array

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

puts
