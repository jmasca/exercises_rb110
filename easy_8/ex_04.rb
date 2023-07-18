# ex_04.rb
system 'clear'
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that returns a list of all substrings of a string that
#     are palindromic. That is, each substring must consist of the same
#     sequence of characters forwards as it does backwards.

#   - The return value should be arranged in the same sequence as the
#     substrings appear in the string.

#   - Duplicate palindromes should be included multiple times.

#   - You may use the substrings method you wrote in the previous exercise.

#   - For the purposes of this exercise, you should consider all characters
#     and pay attention to case; that is, "AbcbA" is a palindrome, but neither
#     "Abcba" nor "Abc-bA" are. In addition, assume that single characters are
#     not palindromes.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - from a string, return a list of all substrings that are palindromic.

#   input: String
#   output: Array

#   rules:
#     explicit:
#       - all substrings should be palindromic (same forwards as backwards)
#       - arrange the return value in the same sequence the substrings appear.
#       - duplicate palindromes appear multiple times in the return value
#       - case sensitive
#     implicit:
#       - the length of the string must be at least 2 chars long

# --- EXAMPLES --- #

#   - 'madam' == ['madam', 'ada']

# --- DATA STRUCTURES --- #

#   - String
#   - Array

# --- ALGORITHM --- #

#   - obtain a string
#   - call the substrings method from ex_03 with the string as the argument, 
#     this will give us a list of all substrings as an array
#   - assign the returned array to a variable called `all_substrings`
#   - iterate through the array `all_substrings`
#     - test each substring against its reversed version
#       - if they're equal, add the substring to a new array called
#         `palindromic_substrings`
#   - return the array `palindromic_substrings`

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:

def leading_substrings(str)
  substring = ''
  str.chars.map { |char| substring += char }
end

def substrings(str)
  substrings = []
  (0...str.size).each { |idx| substrings += leading_substrings(str[idx..-1]) }
  substrings
end
=begin
def palindromes(str)
  all_substrings = substrings(str)
  palindromic_substrings = all_substrings.select do |sub_str|
                          sub_str.size > 1 ? sub_str == sub_str.reverse : false
                        end
  palindromic_substrings
end
=end
def palindromes(str)
  substrings(str).select do |sub_str|
    sub_str.size > 1 ? sub_str == sub_str.reverse : false
  end
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p palindromes('abcd')
p palindromes('abcd') == []
puts

p palindromes('madam')
p palindromes('madam') == ['madam', 'ada']
puts

p palindromes('hello-madam-did-madam-goodbye')
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts

p palindromes('knitting cassettes')
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
puts

# --------------------------------------------------------------------------- #
