system 'clear'
# medium 2 - exercise 2

# PROBLEM #

#   - A collection of spelling blocks has two letters per block
#     (as shown in this list):

#     B:O   X:K   D:Q   C:P   N:A
#     G:T   R:E   F:S   J:W   H:U
#     V:I   L:Y   Z:M

#   - This limits the words you can spell with the blocks to just those words
#     that do not use both letters from any given block.
#     Each letter in each block can only be used once.

#   - Write a method that returns true if the word passed in as an argument can
#     be spelled from this set of blocks, false otherwise.

#   input: String (a word to check against the blocks of letters)
#   output: Boolean (true or false)

#   rules:
#     explicit:
#       - the block of letters has been provided
#       - each letter can only be used once per word
#       - each block of letters can only be used once per word
#       - a String is passed as a word and is used to compare to the blocks
#       - if both letters from a single block are used, return false
#       - if the word uses only a single letter per block, return true
#     implicit:
#       - both upper/lower cases may be passed to the method

# EXAMPLES #

#   'BATCH' == true   (B:O, N:A, G:T, C:P, H:U) (no repeated blocks)
#   'BUTCH' == false  (B:O, H:U, G:T, C:P, H:U) (H:U is repeated)

# DATA STRUCTURES #

#   - String (the word passed into the method)
#   - Hash (the block of letters)
#   - Boolean (true or false if the word can be spelled within the rules)

# ALGORITHM #

#   - define a CONSTANT hash representing the block of letters, `LETTER_BLOCKS`
#   - define a method named `block_word?`:
#     - `block_word?` accepts a String argument, `word`
#   - define an empty hash, `word_blocks`
#   - iterate through each letter:
#     - assign the uppercase letter to a variable `cap_letter`
#     - check if `cap_letter` is in the hash `word_blocks`
#       - in already:
#         - return false
#       - not in already:
#         - add the key-value pair from `LETTER_BLOCKS` to `word_blocks`
#   - if all letters iterated, return true

# CODE #
=begin
LETTER_BLOCKS =
  { 'B' => 'O',   'X' => 'K',   'D' => 'Q',   'C' => 'P',   'N' => 'A',
    'G' => 'T',   'R' => 'E',   'F' => 'S',   'J' => 'W',   'H' => 'U',
    'V' => 'I',   'L' => 'Y',   'Z' => 'M', }.freeze

def block_word?(word)
  word_blocks = {}
  word.chars.each do |letter|
    cap_letter = letter.upcase
    if word_blocks.key?(cap_letter) || word_blocks.value?(cap_letter)
      return false
    elsif LETTER_BLOCKS.key?(cap_letter)
      word_blocks[cap_letter] = LETTER_BLOCKS[cap_letter]
    else
      word_blocks[LETTER_BLOCKS.key(cap_letter)] = cap_letter
    end
  end
  true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
puts
=end

# LS INSPIRED SOLUTION #

LETTER_BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(word)
  upcase_word = word.upcase
  LETTER_BLOCKS.none? { |block| upcase_word.count(block) >= 2 }
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
puts
