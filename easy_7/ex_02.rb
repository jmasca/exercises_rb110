# ex_02.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Write a method that takes a string, and then returns a hash that
#     contains 3 entries: one represents the number of characters in the
#     string that are lowercase letters, one for the number of characters that
#     are uppercase letters, and one for the number of characters that are
#     neither.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

#   - from a given string return a hash that contains entries for:
#       - the number of chars that are lowercase in the string
#       - the number of chars that are uppercase in the string
#       - the number of chars that are neither in the string

#   input: String
#   ouput: Hash { lowercase: 0, uppercase: 0, neither: 0 }

#   rules:
#     explicit:
#       - strings may contain uppercase, lowercase, or any other type of char
#       - the hash will have 3 keys and 3 values
#         - each value will be an integer
#     implicit:
#       - whitespace is considered a char
#       - empty strings should return a 0 for all hash values

# --- EXAMPLES --- #

#   'a123 C' == { lowercase: 1, uppercase: 1, neither: 4 }
#     a -> lowercase += 1, 1 -> neither += 1, 2 -> neither += 1,
#     3 -> neither += 1, ' ' -> neither += 1, C -> uppercase += 1
#       => { lowercase: 1, uppercase: 1, neither: 4 }

# --- DATA STRUCTURES --- #

#   - String
#   - Hash

# --- ALGORITHM --- #

#   - initialize a hash with the following:
#       - keys: lowercase, uppercase, neither
#       - values: 0, 0, 0
#   - begin iterating through the string:
#     - check if the current char is in a range of lowercase chars a-z
#       - if yes, increment the value of the `lowercase` key in our hash
#       - go to the next char
#     - check if the current char is in a range of uppercase chars A-Z
#       - if yes, increment the value of the `uppercase` key in our hash
#       - go to the next char
#     - otherwise, increment the value of the `neither` key in our hash
#       - go to the next char
#   - after all chars have been iterated through, return the hash

# --------------------------------------------------------------------------- #

# --- CODE --- #

# algorithm solution:

def letter_case_count(str)
  case_count = { lowercase: 0, uppercase: 0, neither: 0 }

  str.each_char do |char|
    if ('a'..'z').include?(char)
      case_count[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      case_count[:uppercase] += 1
    else
      case_count[:neither] += 1
    end
  end
  case_count
end

# LS solution using the #count method and regex:

def letter_case_count1(str)
  case_count = {}
  chars = str.chars

  case_count[:lowercase] = chars.count { |c| c =~ /[a-z]/ }
  case_count[:uppercase] = chars.count { |c| c =~ /[A-Z]/ }
  case_count[:neither] = chars.count { |c| c =~ /[^a-zA-Z]/ }

  case_count
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
puts

p letter_case_count1('abCdef 123') == {lowercase: 5, uppercase: 1, neither: 4}
p letter_case_count1('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count1('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count1('') == { lowercase: 0, uppercase: 0, neither: 0 }
puts

# --------------------------------------------------------------------------- #
