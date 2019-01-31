# PEDAC


# Problem
# Create a simple mad-lib program that prompts for a noun, a verb, and an adverb, and an adjective
# Inject these words into a story that you create
# Question: Do we need to do input validation?

# Examples / Test Cases
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

# Data Structures
# string, array, maybe hash

# Algorithms
# prompt the user for a noun, save this in a variable called 'noun'
# prompt the user for a verb, save this in a variable called 'verb'
# proppt the user for an adjective, save this in a variable called 'adjective'
# prompt the user for an adverb, save this in a variable called 'adverb'
# Create a story and use string interpolation to add in the parts of speech.


# Code

puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter an adjective:"
adjective = gets.chomp

puts "Enter an adverb:"
adverb = gets.chomp


puts "I'll have you know, back when I was your age, I would #{verb} all the way to school \
and even if I was feeling #{adjective}, I would just scream out loud '#{adverb.capitalize}'! \
And that would get me all the way to #{noun}."

# puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"