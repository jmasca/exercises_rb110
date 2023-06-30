# ex_06.rb
system "clear"
# --------------------------------------------------------------------------- #

# Practice Problem:

#   - Modify the method from the previous exercise so it ignores
#     non-alphabetic characters when determining whether it should uppercase
#     or lowercase each letter. The non-alphabetic characters should still be
#     included in the return value; they just don't count when toggling the
#     desired case.

#   - Due to the similarities, I will simply code the solution.
#     - I'm using the original algorithm solution from ex_05.rb and modifying
#       it so that the boolean is only switched if the current char is a
#       letter. This switch will occur after the char is capitalized or
#       lowercased.

# --------------------------------------------------------------------------- #
# --- (UNDERSTAND THE) PROBLEM --- #
# --- EXAMPLES --- #
# --- DATA STRUCTURES --- #
# --- ALGORITHM --- #
# --------------------------------------------------------------------------- #

# --- CODE --- #

def staggered_case(str)
  new_str = ''
  capital = true

  str.each_char do |char|
    if char =~ /[a-zA-Z]/ # can also use the regex /[a-z]/i (/i is ignore case)
      capital ? new_str << char.upcase : new_str << char.downcase
      capital = !capital
    else
      new_str << char
    end
  end
  new_str
end

# further exploration: (the option to consider the non-alphabetic chars or not)

def staggered_case1(str, non_chars=false)
  new_str = ''
  capital = true

  str.each_char do |char|
    if char =~ /[a-z]/i
      capital ? new_str << char.upcase : new_str << char.downcase
      capital = !capital
    else
      new_str << char
      capital = !capital if non_chars
    end
  end
  new_str
end

# --------------------------------------------------------------------------- #

# --- TEST CASES --- #

p staggered_case('I Love Launch School!')
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts

p staggered_case('ALL CAPS')
p staggered_case('ALL CAPS') == 'AlL cApS'
puts

p staggered_case('ignore 77 the 444 numbers')
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
puts

p staggered_case1('I Love Launch School!')
p staggered_case1('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts

p staggered_case1('ALL CAPS', true)
p staggered_case1('ALL CAPS', true) == 'AlL CaPs'
puts

p staggered_case1('ignore 77 the 444 numbers', true)
p staggered_case1('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
puts

# --------------------------------------------------------------------------- #
