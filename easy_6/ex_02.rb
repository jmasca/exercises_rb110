# ex_02.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:
#   - Write a method that takes an array of strings, and returns an array
#     of the same string values, except with the vowels (a, e, i, o, u)
#     removed.

# ----------------------------------- #

# (UNDERSTAND THE) PROBLEM #
#   - given an array of strings, remove the vowels a,e,i,o,u from each string.
#   - return the same array and string values, but without the vowels.
#
#   - input: an array of strings
#   - output: an array of strings (same values)
#
#   - rules:
#     - explicit:
#       - vowels consist of (a, e, i, o, u) only (no y)
#       - return the same string values
#     - implicit: 
#       - needs to handle uppercase and lowercase
#       - I'm assuming from the wording of "an array of the same string values"
#         it simply means the same upper/lowercase letter minus the vowels.
#         (However, in Ruby we can use the bang (!) operator on the map method
#           from our solution if we wanted to mutate the caller directly.)

# question:
#   - does the phrase "same string values" refer to its contents or is it in
#     reference to mutation?
#     In other words: mutate the caller or return a new array?

# EXAMPLES #
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
#
# [green, YELLOW, black, white] == [grn, YLLW, blck, wht]

# DATA STRUCTURES #
#   - an array of strings

# ALGORITHM #
#   - initialize a constant to represent what's considered a vowel
#       (contain uppercase and lowercase representations)
#   - iterate through each string of the given array
#     - iterate through each char of the current string
#       - if the current char is a vowel, delete the current char
#       - otherwise, go to the next char
#   - return the array

# ----------------------------------- #

# --- CODE --- #

VOWELS = "aeiouAEIOU"

def remove_vowels(arr)
  arr.map { |str| str.delete(VOWELS) }
end

# ----------------------------------- #

print remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)), ' -> '
puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
print "\n", remove_vowels(%w(green YELLOW black white)), ' -> '
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
print "\n", remove_vowels(%w(ABC AEIOU XYZ)), ' -> '
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
