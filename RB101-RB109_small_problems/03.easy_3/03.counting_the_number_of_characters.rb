# PEDAC

# Problem
# Explicit Requirements:
#  - Ask the user for an input of a word or multiple words
#  - return back a string interpolated with the number of characters
#  - Spaces should NOT be counted as a character


# Examples / Test Cases
# input:

# Please write word or multiple words: walk
# output:

# There are 4 characters in "walk".
# input:

# Please write word or multiple words: walk, don't run
# output:

# There are 13 characters in "walk, don't run".

# Data Structures
# - array
# - strings and integers

# Algorithm
# prompt user for a word or multiple words, store this in a variable called "user_input"
# use 'delete' to delete all spaces and save this string in a variable called 'no_strings'
# call 'count' on 'no_strings'
# puts a string that interpolates the number of characters in 'user_input' with your message

# Code
puts "Please write word or multiple words: "
user_input = gets.chomp

count = user_input.delete(' ').size

puts "There are #{count} characters in \"#{user_input}\""











# Counting the Number of Characters
# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# input:

# Please write word or multiple words: walk
# output:

# There are 4 characters in "walk".
# input:

# Please write word or multiple words: walk, don't run
# output:

# There are 13 characters in "walk, don't run".
# Hide Solution & Discussion
# Solution
# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."
# Discussion
# We don't want to count spaces here, so we use String#delete to return a new String with all spaces removed from it. The original string stored in input is left intact.

