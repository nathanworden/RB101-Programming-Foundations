# PEDAC

# Problem
# Write a program that will ask for the user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.
# input: string
# output: string
# Explicit Requirements: 
#  - program greets user
#  - if exclimation point present, puts all capital letters.

# Example / Test Cases
# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# Data Structure
# strings

# Algorithm
# prompt user for their name
# if the name ends with an exclimation point:
#   - delete the '!', puts with all capitals and ask 'why are we screaming?'
# if the name doesn't end with an exclimation point:
#   - puts Hello 'name'

# Code

# print "What is your name? "
# name = gets.chomp

# if name.end_with?('!')
#   puts "HELLO #{name.delete('!').upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end



# Book Answer:
print 'What is your name? '
name = gets.chomp!

if name[-1] == '!'
  name = name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end


# Greeting a user
# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

# Examples

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?
# Hide Solution & Discussion
# Approach/Algorithm
# You may find String#chomp or String#chop handy.

# Solution
# print 'What is your name? '
# name = gets.chomp

# if name[-1] == '!'
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end
# Discussion
# We begin by asking for and obtaining the user's name. We then test the last character of the user's name (name[-1]) to see if it is an exclamation mark.

# If the last character of the name is an exclamation mark, we chop that exclamation mark from the name, then print the SHOUTING version of the greeting. Otherwise, we just print a normal greeting.

# Note that this solution uses both String#chomp and String#chop. These two methods are closely related, but slightly different: #chomp conditionally removes the tail end of a string (defaulting to a newline), while #chop removes the last character unconditionally. Both versions also have ! versions that modify the string directly; we could have used these here, but decided not to because the use of the ! in both the method name and the string might be mildly confusing.

# Further Exploration
# Try modifying our solution to use String#chomp! and String#chop!, respectively.








