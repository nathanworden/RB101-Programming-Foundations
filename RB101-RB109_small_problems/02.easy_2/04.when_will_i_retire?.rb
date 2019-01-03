#PEDAC


# Problem
#  - Build a program that displays when the user will retire and how many years she has to work till retirement.
# Implicit instructions: return the current year.
# input: integer
# output: string, and string interpolation
# question: what to do with wrong inputs?


# Exampes / Test Cases
# What is your age? 30
# At what age would you like to retire? 70
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# Data Structures
# string


# Algorithm
#  - prompt user for age and what age they would like to retire
#  - subtract their age from the age they would like to retire in a variable called 'remaining_years'
#  - assign a variable called "retire_date" to the current date + 'remaining_years'
#  - puts the date and retire_date
#  - puts remaining_years

# Code

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retire_age = gets.to_i

current_year = Time.now.year
remaining_years = retire_age - age
retire_date = current_year + remaining_years


puts "It's #{current_year}. You will retire in #{retire_date}"
puts "You have only #{remaining_years} years of work to go!"








# When will I Retire?
# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
# Hide Solution & Discussion
# Approach/Algorithm
# Use the Time class from the ruby core library.

# Solution
# print 'What is your age? '
# current_age = gets.to_i

# print 'At what age would you like to retire? '
# retirement_age = gets.to_i

# current_year = Time.now.year
# work_years_to_go = retirement_age - current_age
# retirement_year = current_year + work_years_to_go

# puts "It's #{current_year}. You will retire in #{retirement_year}. "
# puts  "You have only #{work_years_to_go} years of work to go!"
# Discussion
# In this solution, we use Time.now to get the current date. This returns a Time object. The Time class has a fairly useful method, Time#year that gives us the current year. From there we can determine the retirement year based on the two inputs and the current year.





