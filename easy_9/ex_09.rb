system 'clear'
# easy 9 - exercise 9

# PROBLEM #

#   - Given an array of words, write a program that prints out groups of words
#     that are anagrams.

#   - Anagrams are words that have the same exact letters in them but in a
#     different order.

#   input: Array (of words)

# EXAMPLE #

#   words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#            'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#            'flow', 'neon']

#   output:

#     ["demo", "dome", "mode"]
#     ["neon", "none"]
#     (etc)

#   ... I'm not a fan of how this question is laid out, so I'm going straight to
#   the algorithm.

# ALGORITHM #

#   - define a method named `anagrams` that takes an Array argument `words`
#   - initialize an empty Array named `groups`
#   - iterate the array `words`:
#     - initialize an empty temporary array called `tmp`
#     - upon each word:
#       - check to see if the word is already in the array `groups`
#         - if the word is in `groups`, go to the next word
#       - otherwise, add the word to `tmp`
#       - using the word in `tmp`, iterate the remaining words of `words`:
#         - compare each word with the word in `tmp` to see if its an anagram
#           - anagrams are added to `tmp`
#           - others are skipped
#       - after iterating, add `tmp` to the `groups` array
#     - repeat for all words
#   - display the groups of words within `groups`

# CODE #

=begin
# algorithm solution #
def anagrams(words)
  groups = []

  words.each do |word|
    tmp = []
    groups.flatten.include?(word) ? next : tmp << word

    ((words.index(word) + 1)...words.size).each do |idx|
      tmp << words[idx] if word.chars.sort == words[idx].chars.sort
    end

    groups << tmp
  end

  groups.each { |group| p group }
end
=end

# LS inspired solution using a Hash #
def anagrams(words)
  groups = {}

  words.each do |word|
    key = word.chars.sort.join

    if groups.has_key?(key)
      groups[key].push(word)
    else
      groups[key] = [word]
    end
  end

  groups.each_value { |v| p v }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams(words)
puts
