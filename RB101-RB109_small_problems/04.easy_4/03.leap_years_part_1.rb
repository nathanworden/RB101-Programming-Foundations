# PEDAC


# Problem
# Write a method that takes any year greater than 0 as input and returns true if the year is a leap year, or false if it is not a leap year
# Explict requirements:
# - A leap year occurs every year that is evenly divisible by 4
#     - unless the year is also divisible by 100
#          - unless the year is evenly divisible by 400
# input: integer
# output: boolean


# Example / Test Cases
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# Data Structure
# integer

# Algorithm
# if year is divisible by 4 and not divisible by 100, it is a leap year
# - unless it is also divisble by 400


# Code
# def leap_year?(year)
#   year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
# end


def leap_year?(year)
  if year % 4 == 0
    return true unless year % 100 == 0
    if year % 100 == 0
      return false unless year % 400 == 0
      if year % 400 == 0
        return true
      end
    end
  else
    false
  end
end



p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
p leap_year?(1600) == true
