# ex_02.rb
system "clear"
# --------------------------------------------------------------------------- #
=begin
# my solution:

def time_of_day(minutes)
  return "00:00" if minutes % 1440 == 0
  minutes -= ((minutes / 1440) * 1440) if minutes.abs > 1440
  hours, mins = minutes.divmod(60)
  hours = 24 - hours.abs if hours < 0

  sprintf('%02d:%02d', hours, mins)
end

puts time_of_day(75) == "01:15"
puts time_of_day(105) == "01:45"
puts time_of_day(1725) == "04:45"
puts time_of_day(1541) == "01:41"
puts time_of_day(885) == "14:45"

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
=end
# --------------------------------------------------------------------------- #
=begin
# LS solution:

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

puts time_of_day(75) == "01:15"
puts time_of_day(105) == "01:45"
puts time_of_day(1725) == "04:45"
puts time_of_day(1541) == "01:41"
puts time_of_day(885) == "14:45"

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
=end
# --------------------------------------------------------------------------- #

# further eploration 1: a single calculation for normalization of mins:

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(minutes)
  minutes %= MINUTES_PER_DAY
  hours, mins = minutes.divmod(MINUTES_PER_HOUR)

  sprintf('%02d:%02d', hours, mins)
end

puts time_of_day(75) == "01:15"
puts time_of_day(105) == "01:45"
puts time_of_day(1725) == "04:45"
puts time_of_day(1541) == "01:41"
puts time_of_day(885) == "14:45"

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
