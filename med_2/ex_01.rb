system 'clear'
# medium 2 - exericse 1

# PROBLEM #

#   - Write a program that reads the content of a text file and then prints the
#     longest sentence in the file based on number of words.
#     Sentences may end with periods (.), exclamation points (!), or question
#     marks (?).
#     Any sequence of characters that are not spaces or sentence-ending
#     characters should be treated as a word.
#     You should also print the number of words in the longest sentence.

#   input: String
#   output: String, Integer

#   rules:
#     explicit:
#       - read the contents of a text file
#       - print the sentence with the most words, and the number of words
#       - ending punctuation include `.` `!`, `?`
#       - spaces do not count, but everything else does

text = <<-TXT

Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.

TXT

sentences = text.split(/\.|\?|!/)
longest_sentence = []
number_of_words = 0

sentences.each do |sentence|
  if longest_sentence.empty?
    longest_sentence = sentence.split
    number_of_words = longest_sentence.size
  elsif sentence.split.size > number_of_words
    longest_sentence = sentence.split
    number_of_words = longest_sentence.size
  end
end

puts longest_sentence.join(' ')
puts number_of_words
puts

=begin
# LS Solution #

sentences = text.split(/\.|\?|!/)
longest_sentence = sentences.max_by { |sentence| sentence.split.size }
longest_sentence = longest_sentence.strip
number_of_words = longest_sentence.split.size

puts "#{longest_sentence}"
puts "Containing #{number_of_words} words"
puts
=end
