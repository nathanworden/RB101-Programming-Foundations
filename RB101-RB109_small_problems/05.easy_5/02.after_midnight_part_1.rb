# PEDAC

# Problem
# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.
# Explicit Requirements:
# - If the number of minutes is negative, the time is before midnight
#     - e.g. between 12 hours and 24 hours
# - If the number is positive, the time is after midnight
#     - e.g. between 0 and 12 hours
# Implicit Requirements:
# - Even though you don't need to know the day, you will have minutes that span multiple days


# Examples / Test Cases
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"


# Data Strcuturs
# integers, string, array


# Algorithms
# Define some constants so we don't have mystery numbers:
#     - MINUTES_PER_HOUR = 60
#     - HOURS_PER_DAY = 24
#     - MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY
# - define a method time_of_day that accepts an integer named 'delta_minutes' as an argument
#   - 'delta_minutes' = 'delta_minutes' % MINUTES_PER_DAY
#   - hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
# - 

















# Book Answer


# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY


# def time_of_day(delta_time)
#   delta_time = delta_time % MINUTES_PER_DAY
#   hours, minutes = delta_time.divmod(MINUTES_PER_HOUR)
#   format("%02d:%02d", hours, minutes)
# end


# p time_of_day(0) == "00:00"
# p time_of_day(3) == "00:03"
# p time_of_day(35) == "00:35"
# p time_of_day(59) == "00:59"
# p time_of_day(60) == "01:00"
# p time_of_day(180) == "03:00"
# p time_of_day(600) == "10:00"
# p time_of_day(800) == "13:20"
# p time_of_day(1440) == "00:00"
# p time_of_day(3000) == "02:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(-1437) == "00:03"
# p time_of_day(-1440) == "00:00"
# p time_of_day(-1441) == "23:59"
# p time_of_day(-4231) == "01:29"






















# My Code
# def time_of_day(minutes)
#   negative = minutes < 0 ? true : false
#   hours, minutes = minutes.abs.divmod(60)
#   if hours >= 24
#      hours = hours % 24 
#   end

#   if negative
#     hours = (24 - 1 - hours) unless minutes == 0
#     minutes = (60 - minutes) unless minutes == 0
#   end

#   hours = format("%02d", hours)
#   minutes = format("%02d", minutes)
#   "#{hours}:#{minutes}"
# end



# p time_of_day(0) == "00:00"
# p time_of_day(3) == "00:03"
# p time_of_day(35) == "00:35"
# p time_of_day(59) == "00:59"
# p time_of_day(60) == "01:00"
# p time_of_day(180) == "03:00"
# p time_of_day(600) == "10:00"
# p time_of_day(800) == "13:20"
# p time_of_day(1440) == "00:00"
# p time_of_day(3000) == "02:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(-1437) == "00:03"
# p time_of_day(-1440) == "00:00"
# p time_of_day(-1441) == "23:59"
# p time_of_day(1441) == "00:01"
# p time_of_day(-4231) == "01:29"





# Further Exploration:
#Problem
# - Write a method that, given a number of minutes, returns a day and time.
# - If the number of minutes is negative, the time is before midnight on Saturday
# - if the number of minutes is positive, the time is after midnight on Sunday


# Examples / Test Cases
# p time_and_day(-4231) == "Thursday 01:29"
# p time_and_day(0) == "Sunday 00:00"
# p time_and_day(5) == "Sunday 00:05"
# p time_and_day(-5) == "Saturday 23:55"
# p time_and_day(1440) == "Monday 00:00"


# Data Structure
# Time, integer, strings

# Algorithm
# Define Constants:
# SECONDS_PER_MINUTE = 60
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = 1440
# DAYS_PER_WEEK = 7
# define a function 'time_and_day' which accepts an integer called 'delta_time'
# create a variable using Time.new called 'time' for a date and time on a Sunday at midnight
#     - time = Time.new(2019, 01, 13, 0, 0)
# Add delta_time multiplied by SECONDS_PER_MINUTE to time and save this in a variable called 'new_time'
# return new_time.strftime("%A %k:%M")

# Code

SECONDS_PER_MINUTE = 60

def time_and_day(delta_time)
  time = Time.new(2019, 01, 13, 0, 0)
  new_time = time + (SECONDS_PER_MINUTE * delta_time)
  new_time.strftime("%A %0k:%M")
end


p time_and_day(-4231) #== "Thursday 01:29"
p time_and_day(0) #== "Sunday 00:00"
p time_and_day(5) #== "Sunday 00:05"
p time_and_day(-5) #== "Saturday 23:55"
p time_and_day(1440) #== "Monday 00:00"



















# Code 1st try, FAIL
# def time_of_day(integer)
#   hours, minutes = integer.divmod(60)
#   if integer < 0
#     if hours >= 24
#       hours /= 24
#     end
#     hours = 24 + hours
#   end
#   if hours >= 24
#     hours /= 24
#   end
#   if minutes < 10
#     minutes = "0" + minutes.to_s
#   end
#   if hours < 10
#     hours = "0" + hours.to_s
#   end
#   "#{hours}:#{minutes}"
# end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) #== "01:29"







