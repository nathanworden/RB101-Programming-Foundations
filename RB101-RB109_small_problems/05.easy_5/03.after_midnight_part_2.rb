# Problem
# Write a method that takes the time of day in 24 hour format and returns the number of minutes before midnight
# Write a method that takes the time of day in 24 hour format and returns the number of minutes after midnight

# Examples / Test Cases
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('13:49') == 829
# before_midnight('13:49') == 611
# after_midnight('20:20') == 1220
# before_midnight('20:20') == 220
# after_midnight('23:59') == 1439
# before_midnight('23:59') == 1
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# Data Structures
# String, integer, and array

# Algorithm
#  - define a method called 'after_midnight' which accepts a string as an argument called 'delta_time'
#  - Create a new array by calling .split(":") on delta_time. Name this 'time_array'
#  - Convert the elements of 'time_array' to integers
#  - multiply the first element of 'time_array' by 60 and save this in a variable called 'hours'
#  - add 'hours' to the second element of 'time_array'. Call this 'time_after_midnight'

# - for 'before_midnight', subtract 'time_after_midnight' from MINUTES_IN_DAY (which is 1440)

# Code GOOD JOB! I AM PROUD OF THIS!

# MINUTES_IN_HOUR = 60
# MINUTES_IN_DAY = 1440
# HOURS_IN_DAY = 24

# def after_midnight(delta_time)
#   time_array = delta_time.split(":")
#   hours, minutes = time_array.map {|e| e.to_i}
#   hours = hours % HOURS_IN_DAY
#   hours *= MINUTES_IN_HOUR
#   time_after_midnight = hours + minutes
# end


# def before_midnight(delta_time)
#   time_array = delta_time.split(":")
#   hours, minutes = time_array.map {|e| e.to_i}
#   hours = hours % HOURS_IN_DAY
#   hours *= MINUTES_IN_HOUR
#   time_after_midnight = hours + minutes
#   time_before_midnight = MINUTES_IN_DAY - time_after_midnight
#   time_before_midnight % MINUTES_IN_DAY
# end


# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('13:49') == 829
# p before_midnight('13:49') == 611
# p after_midnight('20:20') == 1220
# p before_midnight('20:20') == 220
# p after_midnight('23:59') == 1439
# p before_midnight('23:59') == 1
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0


# Book Answer:

# MINUTES_IN_DAY = 1440
# MINUTES_IN_HOUR = 60

# def after_midnight(time_str)
#   hours, minutes = time_str.split(":").map(&:to_i)
#   (hours * MINUTES_IN_HOUR + minutes) % MINUTES_IN_DAY
# end


# def before_midnight(time_str)
#   minutes = MINUTES_IN_DAY - after_midnight(time_str)
#   minutes % MINUTES_IN_DAY
# end



# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('13:49') == 829
# p before_midnight('13:49') == 611
# p after_midnight('20:20') == 1220
# p before_midnight('20:20') == 220
# p after_midnight('23:59') == 1439
# p before_midnight('23:59') == 1
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0



# Further Exploration:

TIME_ANCHOR = Time.new(2019, 1, 16)
MINUTES_PER_DAY = 1440

def after_midnight(time_str)
  hours, minutes = time_str.split(":").map(&:to_i)
  time = Time.new(2019, 1, 16, hours, minutes)
  ((time - TIME_ANCHOR).to_i / 60) % MINUTES_PER_DAY
end



p after_midnight('20:20') #== 1220




























