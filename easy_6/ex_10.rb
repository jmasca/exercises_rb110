# ex_10.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - What will the following code print, and why? Don't run the code until
#     you have tried to answer.

# --------------------------------------------------------------------------- #

# --- (UNDERSTAND THE) PROBLEM --- #

# --- EXAMPLES --- #

# --- DATA STRUCTURES --- #

# --- ALGORITHM --- #

# -- ANSWER -- #

#   expected output: Moe, Larry, CURLY, SHEMP, Harpo, CHICO, Groucho, Zeppo
#   why: because when the `value` is put into `array2`, it is putting a
#        reference to the value in `array1`. This means that any changes
#        to either array would cause a change in the other.
#        (each array contains the same string objects)

# --------------------------------------------------------------------------- #

# --- CODE --- #

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2


# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

# --------------------------------------------------------------------------- #
