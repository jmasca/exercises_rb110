# ex_01.rb (cute angles)
system "clear"
# --------------------------------------------------------------------------- #


# NOTES:
#   - Converting degrees into minutes and seconds:
#     - multiply the decimal by 60 to get the minutes
#     - multiply any decimal from minutes by 60 again to get the seconds

# PROBLEM BREAKDOWN:
#   - input: floating point number
#             - represents an angle between 0-360 degrees
#   - output: string representing that angle in degrees, mins, and secs
#             - degrees represented by °
#             - minutes represented by '
#             - seconds represented by "

# HIGH_LEVEL ALGORITHM:
#   - 

# --------------------------------------- #
# my solution:

DEGREE = "\xC2\xB0"

def dms(angle)
  dms_arr = angle.divmod(1)

  2.times do
    dms_arr << ((dms_arr.pop.round(4) * 60).divmod(1))
    dms_arr.flatten!
  end

  format(%(#{dms_arr[0]}#{DEGREE}%02d'%02d"), dms_arr[1], dms_arr[2])
end

# --------------------------------------- #

puts dms(30)
puts dms(30) == %(30°00'00")
puts dms(76.73)
puts dms(76.73) == %(76°43'48")
puts dms(254.6)
puts dms(254.6) == %(254°36'00")
puts dms(93.034773)
puts dms(93.034773) == %(93°02'05")
puts dms(0)
puts dms(0) == %(0°00'00")
puts dms(360)
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# ------- LS SOLUTION ------- #
=begin
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
=end
