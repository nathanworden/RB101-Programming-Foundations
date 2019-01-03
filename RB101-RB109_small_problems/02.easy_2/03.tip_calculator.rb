#PEDAC

# Understand the Problem
# input: integers
# output: string with interpolation
# Explicit Requirements: 
#     - Prompt the user for a bill and tip rate
#     - Compute the tip
#     - Display both the tip and the total amount of the bill
# Implicit Requirements
#     - convert the input to floats
#     - round to one decimal place
#     - percentage is received as a whole number

# Examples / Test Cases:
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0


# Data Structure
# Strings and Integers

# Algorithm
#  - Prompt the user for the bill in dollars.
#     - Convert to float
#     - Store the bill amount in a variable called 'bill'
#  - Prompt the user for the tip amount percentage
#     - Convert to float
#     - Divide by 100 to get a decmial
#     - Store the tip amount in a variable called 'tip_percentage'
#  - multiply 'bill' by 'tip' and store this in a variable called tip_amount
#  - add 'tip_amount' to 'bill' and store this in a variable called 'total'
#  - Use string interpolation to puts the tip and total amount


puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip_percentage = (gets.to_f / 100)

tip_amount = (bill * tip_percentage)

total = (bill + tip_amount)

puts "The tip is $" + "%.2f" % tip_amount #{tip_amount}"
puts "The total is $" + "%.2f" % total #{total}"


# Tip calculator
# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0
# Hide Solution & Discussion
# Solution
# print 'What is the bill? '
# bill = gets.chomp
# bill = bill.to_f

# print 'What is the tip percentage? '
# percentage = gets.chomp
# percentage = percentage.to_f

# tip   = (bill * (percentage / 100)).round(2)
# total = (bill + tip).round(2)

# puts "The tip is $#{tip}"
# puts "The total is $#{total}"
# Discussion
# We first obtain the amount of the bill from the user, not worrying too much about data validity for this simple problem. Then we get the tip percentage.

# Next, we calculate the actual tip, and the total bill, then output the results.

# Further Exploration
# Our solution prints the results as $30.0 and $230.0 instead of the more usual $30.00 and $230.00. Modify your solution so it always prints the results with 2 decimal places.

# Hint: You will likely need Kernel#format for this.







