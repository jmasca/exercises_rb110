# ex_05.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that takes a String as an argument, and returns a new
#     String that contains the original value using a staggered capitalization
#     scheme in which every other character is capitalized, and the remaining
#     characters are lowercase.

#   - Characters that are not letters should not be changed, but count as
#     characters when switching between upper and lowercase.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - given a string, return a new string consisting of the original value, but
#     with alternating capitalization (capital, lowercase, capital, etc).

#   input: String
#   output: String

#   rules:
#     explicit:
#       - returning a new string
#       - alternate capitalization
#       - non-letter characters are unchanged, but count as a character in the
#         alternation of capital and lowercase letters
#     implicit:
#       - case begins with a capital letter (index 0)

# --- EXAMPLES --- #

#   'ALL_CAPS' == 'AlL_CaPs'
#   'A'
#   'Al'
#   'AlL'
#   'AlL_'
#   'AlL_C'
#   'AlL_Ca' ...

# --- DATA STRUCTURES --- #

#   - String
#   - Boolean

# --- ALGORITHM --- #

#   - initialize an empty string (to hold our new string we want to return)
#   - initialize a boolean value to true (represents uppercase/capital)
#   1 - beginning with the first char (or the next char upon looping):
#       - if this char is a letter:
#         - make the char CAPITAL
#         - add this char to the new string
#     - otherwise:
#         - add this char to the new string
#   - go to the next char:
#     - if this char is a letter:
#         - make the char lowercase
#         - add this char to the new string
#     - otherwise:
#         - add this char to the new string
#   - assign the boolean variable to its opposite value
#   - go back to 1 and repeat until all chars in the original string are added
#     to the new string
#   - return the new string

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:
=begin
def staggered_case(str)
  new_str = ''
  capital = true

  str.each_char do |char|
    if char =~ /[a-zA-Z]/
      capital ? new_str << char.upcase : new_str << char.downcase
    else
      new_str << char
    end
    capital = !capital
  end
  new_str
end
=end
# NOTE: The above solution can be simplified. #upcase and #downcase return
#       whatever the character is if its a non-letter. That means lines 81-85 
#       aren't needed:

def staggered_case(str)
  new_str = ''
  capital = true

  str.each_char do |char|
    capital ? new_str << char.upcase : new_str << char.downcase
    capital = !capital
  end
  new_str
end

# further exploration: (optional upper or lowercase for first letter)

def staggered_case1(str, capital=true)
  new_str = ''

  str.each_char do |char|
    capital ? new_str << char.upcase : new_str << char.downcase
    capital = !capital
  end
  new_str
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p staggered_case('I Love Launch School!')
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts

p staggered_case('ALL_CAPS')
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts

p staggered_case('ignore 77 the 444 numbers')
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
puts

p staggered_case1('I Love Launch School!')
p staggered_case1('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts

p staggered_case1('I Love Launch School!', false)
puts

p staggered_case1('ALL_CAPS', false)
puts

p staggered_case1('ignore 77 the 444 numbers', false)
puts

# --------------------------------------------------------------------------- #
