# PEDAC

# Understand the Problem
# input: two integers
# output: a string

# Explicit Requirements:
#     - Ask the user for the length and width of a room in meters
#     - Display the area of the room in both square meters and square feet
# Implicit Requirements:
#     - Use string interpolation to puts out a string with floats
#     - Convert meters to feet using this conversion: 1 square meter == 10.7639 square feet

# Questions: 
#     - Should the program handle floats as inputs or assume only integers?
#     - How should the program handle negative numbers as inputs?
#     - How many decimal places do you want the answer to go to?

# Examples / Test Cases: 
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).


# Data Structure
# start with an integer / float, return a string

# Algorithim
#  - Ask the user for the length and with of a room in meters
#  - convert the inputs to floats
#  - multiply the floats together and save the result in a variable called 'meters'
#  - multiply the variable meters by the conversion factor of 10.7639 to get feet and save the result in a variable called 'feet'
#  - puts a sting stating the area of the room in meters and in feet


# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_f

# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_f

# meters = length * width
# feet = meters * 10.7639

# puts "The area of the room is #{meters.round(2)} square meters (#{feet.round(2)} square feet)"



SQUARE_FEET_TO_SQUARE_INCHES = 144
SQUARE_FEET_TO_SQUARE_CENTIMETERS = 929.0304

puts "Enter the length of the room in feet:"
length = gets.to_f

puts "Enter the width of the room in feet:"
width = gets.to_f

square_feet = (length * width).round(2)
square_inches = (square_feet * SQUARE_FEET_TO_SQUARE_INCHES).round(2)
square_centimeters = (square_feet * SQUARE_FEET_TO_SQUARE_CENTIMETERS).round(2)


puts "The area of the room is #{square_feet}" + \
      "square feet (#{square_inches} square inches and #{square_centimeters} square centimeters."




















































# How big is the room?
# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).
# Hide Solution & Discussion
# Solution
# SQMETERS_TO_SQFEET = 10.7639

# puts '==> Enter the length of the room in meters: '
# length = gets.to_f

# puts '==> Enter the width of the room in meters: '
# width = gets.to_f

# square_meters = (length * width).round(2)
# square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

# puts "The area of the room is #{square_meters} " + \
#      "square meters (#{square_feet} square feet)."
# Discussion
# Our solution is straightforward. First we obtain the length, then we get the width. Next we perform our calculations, and then we print the results. We do no validation on our inputs, and just assume the user will enter appropriate values.

# We use a constant, SQMETERS_TO_SQFEET to store the conversion factor between square meters and square feet. This is good practice any time you have a number whose meaning is not immediately obvious upon seeing it.

# The only thing that may be unfamiliar here is the round method (a method of the Float class), which is used to round our results to the nearest 2 decimal places. (You can also use Kernel#format to format the results, but format is harder to use.)

# Further Exploration
# Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.









