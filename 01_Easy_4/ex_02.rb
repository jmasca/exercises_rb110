# ex_02.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution:

def century(year)
  year = year.to_s

  century = ''
  if year.end_with?('00')
    century = (year.to_i / 100).to_s
  else
    century = ((year.to_i / 100) + 1).to_s
  end

  return century + 'th' if %w(11 12 13).include?(century[-2, 2])
  get_suffix(century)
end

def get_suffix(century)
  case century[-1]
  when '1' then century + 'st'
  when '2' then century + 'nd'
  when '3' then century + 'rd'
  else return century + 'th'
  end
end

# --------------------------------------------------------------------------- #

puts "my solution:"
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'

puts

# --------------------------------------------------------------------------- #

# a modified version of the LS solution:

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0

  century.to_s + get_suffix(century)
end

def get_suffix(century)
  return 'th' if (11..13).include?(century % 100)

  case (century % 10)   # (century % 10) gives us the last digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

# --------------------------------------------------------------------------- #
puts "modified LS solution:"
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'

puts

# with integers: 
#   % 100 gives the last two digits; with only 1 or 2 digits: % 100 is self
#   / 100 gives all digits except the last two; with 1 or 2 digits: / 100 is 0
#    (can switch to 10 instead of 100 for integers with only 1 or 2 digits)
