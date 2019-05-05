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
  
end


