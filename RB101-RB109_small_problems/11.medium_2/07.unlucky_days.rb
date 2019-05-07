# PEDAC

# Problem

# Input: A year as a integer, starting wih 1753
# Output: the number of Friday the 13ths in that year

# Examples / Test Cases
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2
# friday_13th(2020) == 2

# Data Structure
# Array
# Hash

# Algorithm
# Initiate an array with the days of the week
# Initiate a Hash with the name of the month as a key and the number of days in it as the value
# subtract 1753 from the input integer. Store the result in a variable called 'years'
# Multiply 365 times the number of normal years
# Multiple 366 times the number of leap years
# Add the two together for the total number of days betwen Jan. 1st 1753 and Jan 1st, input year
# Take the remainder of the number of days divided by 7
# The days of the week array indxed at that number will give you the day of the week of Jan st of that year
# Now find how many Friday the 13ths were that year:
    # Initiate an empty array called 'friday_13'
    # Is the given year a leap year? If so, update the hash so that February has a value of 29
    # Iterate through each month. If the 1st day of the month is Sunday, then push the name
    # of that month into 'Firday_13'
    # Return the size of the array


# Code

def friday_13th(year)
  days = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
  days_in_month = {'January' => 31, 'February' => 28, 'March' => 31, 'April' => 30, 
            'May' => 31, 'June' => 30, 'July' => 31, 'August' => 31, 
            'September' => 30, 'October' => 31, 'November' => 30, 'December' => 31}
  years = (1753...year).to_a
  total_days = years.map do |year|
    if leap_year?(year)
      366
    else
      365
    end
  end
  day = total_days.reduce(:+) % 7

  jan_1st_of_year = day + 1

  days_in_month['February'] = 29 if leap_year?(year)
  first_of_month = [jan_1st_of_year]

  carry_over = jan_1st_of_year

  days_in_month.each do |month, days|
    next if month == 'December'
    first_of_month << (days + first_of_month[-1]) % 7
  end
  first_of_month.map! do |day|
    days[day]
  end
  number_of_friday_13ths = first_of_month.select do |day|
    day == 'Sunday'
  end
  number_of_friday_13ths.count
end



def leap_year?(year)
  return true if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  false
end


# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2
# p friday_13th(2020) == 2


# Leap year?

# p leap_year?(1804) == true
# p leap_year?(1808) == true
# p leap_year?(1812) == true
# p leap_year?(1820) == true
# p leap_year?(2000) == true
# p leap_year?(2004) == true
# p leap_year?(2005) == false
# p leap_year?(1900) == false
# p leap_year?(1753) == false



require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end















