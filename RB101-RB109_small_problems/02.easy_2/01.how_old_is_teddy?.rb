# PEDAC

# Understand the Problem:
# input: none
# output: string
# Explicit requirements:
#     - generate a random number between 20 and 200.
#     - print a string stating "Teddy is ___ years old!"
# Implicit requirements:
#     - Use either string interpolation or concatination.

# Question: When you say 'a random number between 20 and 200', is it including
# 20 and 200, or excluding 20 and 200?


# Examples / Test Cases
# Teddy is 69 years old!
# Teddy is 20 years old!

# Data Structure
# String

# Algorithim
# assign a random number to a varibale called 'teddy_age'
# puts a string using interpolation to state teddy's age.



puts "Hello, what is your name?"
name = gets.chomp


age = rand(20..200)


def yer_age(age, name="Teddy")
 puts "#{name} is #{age} years old!"
end

if name == ''
  yer_age(age)
else
  yer_age(age, name)
end





# Another Student's clever use of the Ternary operator:
# puts 'Please provide a name:'
# name = gets.chomp

# puts "#{name.empty? ? 'Teddy' : name} is #{rand(20..200)} years old!"









































# How old is Teddy?
# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!
# Hide Solution & Discussion
# Approach/Algorithm
# Hint: you may find the rand method useful. It is documented in the Kernel module.

# Solution
# age = rand(20..200)
# puts "Teddy is #{age} years old!"
# Discussion
# Our solution uses Kernel#rand with a range (20..200) as an argument. This use is described in the documentation for rand, although it is kind of an afterthought.

# Nevertheless, the use of a range to limit the output value is an enormous help here, so we use it to generate Teddy's age. Afterward, all we have to do is print the result.

# Further Exploration
# Modify this program to ask for a name, and then print the age for that person. For an extra challenge, use "Teddy" as the name if no name is entered.