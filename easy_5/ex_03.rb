# ex_03.rb
system "clear"
# --------------------------------------------------------------------------- #

# my solution:

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY
=begin
def before_midnight(time_str)
  hours, mins = time_str.split(':')
  delta_minutes = (hours.to_i * MINUTES_PER_HOUR) - mins.to_i
  delta_minutes = 0 if delta_minutes % MINUTES_PER_DAY == 0
  delta_minutes
end

def after_midnight(time_str)
  hours, mins = time_str.split(':')
  delta_minutes = (hours.to_i * MINUTES_PER_HOUR) + mins.to_i
  delta_minutes = 0 if delta_minutes % MINUTES_PER_DAY == 0
  delta_minutes
end

p after_midnight('03:41') == 221
p after_midnight('18:07') == 1087

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
=end
# --------------------------------------------------------------------------- #

# my solution refactored using LS solution:

def before_midnight(time_str)
  hours, mins = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR - mins) % MINUTES_PER_DAY
end

def after_midnight(time_str)
  hours, mins = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + mins) % MINUTES_PER_DAY
end

p after_midnight('03:41') == 221
p after_midnight('18:07') == 1087

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
