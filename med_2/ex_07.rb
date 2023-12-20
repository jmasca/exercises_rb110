system 'clear'
# medium 2 - exercise 7

# PROBLEM #

#   - Write a method that returns the number of Friday the 13ths in the year
#     given by an argument.

#   - You may assume that the year is greater than 1752 (when the United
#     Kingdom adopted the modern Gregorian Calendar) and that it will remain in
#     use for the foreseeable future.

#   input: Integer (representing the given year)
#   output: Integer (representing the number of Friday 13ths in the given year)

        ## going straight to coding since I've solved this in irb ##

# CODE #

require 'date'
=begin
def friday_13th(year)
  jan_thirteenth = Date.new(year, 1, 13)
  dec_thirteenth = Date.new(year, 12, 13)
  spooky_days = 0

  jan_thirteenth.step(dec_thirteenth) do |date|
    spooky_days += 1 if date.day == 13 && date.friday?
  end
  spooky_days
end
=end

# LS Inspired Solution #

def friday_13th(year)
  thirteenth = Date.new(year, 1, 13)
  spooky_days = 0

  12.times do
    spooky_days += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  spooky_days
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
puts
