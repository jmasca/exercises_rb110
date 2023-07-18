# ex_02.rb
system 'clear'
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that returns a list of all substrings of a string that
#     start at the beginning of the original string.

#   - The return value should be arranged in order from shortest to longest
#     substring.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - given a string, return a list of all of the substrings that begin with
#     the first char, arranged  from shortest to longest

#   input: String
#   output: Array (elements are substrings from the first char)

#   rules:
#     explicit:
#       - we're given a string
#       - substrings must begin with the first char of the string
#       - all substrings must be contained in a list
#       - the list of substrings must be arranged shortest to longest
#       - the list of substrings must be returned
#     implicit:
#       - the string argument will consist of at least one char

# --- EXAMPLES --- #

#   'abc'
#   ['a']
#   ['a', 'ab']
#   ['a', 'ab', 'abc'] => ['a', 'ab', 'abc']

# --- DATA STRUCTURES --- #

#   - String
#   - Array

# --- ALGORITHM --- #

#   - initialize a variable called `substring` to an empty string
#   - initilaize a variable called `substrings` to an empty array
#   - iterate through each char of the string
#     - place the first char into the string `substring`
#     - place the `substring` into the `substrings` array
#     - add the next char to the `substring` string
#     - place the updated `substring` into the substrings array
#     - repeat for all chars in the string
#   - return the substrings array (it will already be sorted)

# --------------------------------------------------------------------------- #

# --- CODE --- #

# NOTE:
#   - when using the `String#<<` method it concatenates to self,
#     whereas `String#+` concatenates and returns as a new string

# algorithm solution:

def leading_substrings(str)
  substring = ''
  substrings = []

  str.each_char do |char|
    substring += char
    substrings << substring
  end
  substrings
end

# sugary Ruby solution:

def leading_substrings1(str)
  substring = ''
  str.chars.map { |char| substring += char }
end

# LS inspired solution:

def leading_substrings2(str)
  substrings = []
  0.upto(str.size - 1) { |idx| substrings << str[0..idx]}
  substrings
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p leading_substrings('abc')
p leading_substrings('abc') == ['a', 'ab', 'abc']
puts

p leading_substrings('a')
p leading_substrings('a') == ['a']
puts

p leading_substrings('xyzzy')
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
puts

p leading_substrings1('abc')
p leading_substrings1('abc') == ['a', 'ab', 'abc']
puts

p leading_substrings1('a')
p leading_substrings1('a') == ['a']
puts

p leading_substrings1('xyzzy')
p leading_substrings1('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
puts

p leading_substrings2('abc')
p leading_substrings2('abc') == ['a', 'ab', 'abc']
puts

p leading_substrings2('a')
p leading_substrings2('a') == ['a']
puts

p leading_substrings2('xyzzy')
p leading_substrings2('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
puts

# --------------------------------------------------------------------------- #
