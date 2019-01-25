# PEDAC


# Problem
# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
# and returns a String that represents that angle in degrees, minutes, and seconds. 
# You should use a degree symbol to represent degrees
# You should use a single quote to represent minutes
# You should use a double quote to represent seconds
# A degree has 60 mihutes, while a minute has 60 seconds

# Examples / Test Cases
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# dms(380) == %(20°00'00")


# Data Structures
# strings, floats

# Algorithm
# Initiliaze constants for degrees, minutes and seconds
# define a method called 'dms' which accepts a float as an argument
# Find the remainder of 'float' % 360, assign this to a variable called 'degrees'
# Find the remainder of 'degrees' % 60, assign this to a variable called 'minutes'
# Find the remainder of 'minutes' % 60, assign this to a variable called 'seconds'



# Code


SECONDS_PER_MINUTE = 60
MINUTES_PER_DEGREE = 60


DEGREE = "\xC2\xB0"

def dms(float)
  degrees = float.abs % 360
  minutes = degrees - degrees.to_i
  minutes = minutes.round(8) * MINUTES_PER_DEGREE
  seconds = minutes - minutes.to_i
  seconds = seconds.round(8) * SECONDS_PER_MINUTE

  degrees = degrees.to_i.to_s
  minutes = sprintf("%02i", minutes.to_i.to_s)
  seconds = sprintf("%02i", seconds.to_i.to_s)

  "#{degrees}#{DEGREE}#{minutes}'#{seconds}\""
end


# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# p dms(380) == %(20°00'00")



# Book Answer

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float.abs * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(380) == %(20°00'00")
p dms(-76.73)















