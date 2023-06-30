# ex_04.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that takes a string as an argument and returns a new
#     string in which every uppercase letter is replaced by its lowercase
#     version, and every lowercase letter by its uppercase version.

#     All other characters should be unchanged.

#   - You may not use String#swapcase; write your own version of this method.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - given a string of chars, replace all letters with their opposite cases.
#     uppercase are replaced by lowercase
#     lowercase are replaced by uppercase
#     all other chars are ignored
#     return this new string

#   input: String
#   output: String

#   rules:
#     explicit:
#       - return a new string
#       - uppercase letters become lowercase
#       - lowercase letters become uppercase
#       - non-letter characters are left unchanged


# --- EXAMPLES --- #

#   'CamelCase' == 'cAMELcASE'

# --- DATA STRUCTURES --- #

#   - Strings

# --- ALGORITHM --- #

#   - initialize two array constants:
#     - one array will hold the lowercase letters a-z
#     - one array will hold the uppercase letters A-Z

#   - initialize a new string variable for the new string we'll create
#   - iterate through the string where on each character:
#       - check our constants to see if the char is in either one
#       - if yes:
#           - find the current chars index
#           - go to the char in the opposite constant at this index
#           - add that char to the new string
#       - if no:
#           - add the current char to the new string
#   - return the new string

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:

LOWERCASE = Array('a'..'z')
UPPERCASE = Array('A'..'Z')

def swapcase(str)
  swapped_str = ''

  str.each_char do |c|
    if LOWERCASE.include?(c)
      swapped_str << UPPERCASE[LOWERCASE.index(c)]
    elsif UPPERCASE.include?(c)
      swapped_str << LOWERCASE[UPPERCASE.index(c)]
    else
      swapped_str << c
    end
  end
  swapped_str
end

# LS inspired solution:

def swapcase1(str)
  str.chars.map do |char|
   if char =~ /[a-z]/
     char.upcase
   elsif char =~ /[A-Z]/
     char.downcase
   else
     char
   end
 end.join
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p swapcase('CamelCase')
p swapcase('CamelCase') == 'cAMELcASE'
puts

p swapcase('Tonight on XYZ-TV')
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
puts

p swapcase1('CamelCase')
p swapcase1('CamelCase') == 'cAMELcASE'
puts

p swapcase1('Tonight on XYZ-TV')
p swapcase1('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
puts

# --------------------------------------------------------------------------- #
