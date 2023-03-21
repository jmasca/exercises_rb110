# ex_03.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution:

=begin
def leap_year?(year)
  return false if year < 1

  if year % 4 == 0
    if year % 100 == 0
      year % 400 == 0 ? true : false
    else true
    end
  else false
  end
end
=end

# --------------------------------------------------------------------------- #

# LS solution:

=begin
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end
=end

# a shorter version
def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
