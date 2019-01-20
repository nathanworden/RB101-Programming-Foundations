# PEDAC


# Problem
# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English word for each number
# Here is how to spell out the numbers:
# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
# Implicit Requirements:
# - convert the array of integers to an array of strings in order to sort them
# Question: How would you like the method to handle duplicate integers? 
# - Get rid of them? Or still sort them? I am going to assume still sort them.

# Examples / Test Cases
# alphabetic_number_sort([17, 0, 19, 7, 2, 11, 11, 10]) == [11, 11, 19, 7, 17, 10, 2, 0]
# alphabetic_number_sort((0..19).to_a) == [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]

# Data Structure
# An array of integers, sooo arrays and integers
# strings
# hash

# Algorithm
# define a method that takes an array of integers between 0 and 19 as an argument, called 'array'
# define a hash that maps numbers to their spellings called 'spellings'
# call .map! on 'array'
# - convert each number to it's letter spelling using the 'spellings' hash
# call sort! on array


# Code

def alphabetic_number_sort(array)
  spellings = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6=> 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
  numberings = { 'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9, 'ten' => 10 , 'eleven' => 11, 'twelve' => 12, 'thirteen' => 13, 'fourteen' =>14, 'fifteen' => 15, 'sixteen' => 16, 'seventeen' => 17, 'eighteen' => 18, 'nineteen' => 19}
  array.map! {|int| int = spellings[int] }
  array.sort!
  array.map! {|int| int = numberings[int]}
end


p alphabetic_number_sort((0..19).to_a) == [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]


# Book Answer

# NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)


# def alphabetic_number_sort(numbers)
#   numbers.sort_by {|number| NUMBER_WORDS[number]}
# end

# p alphabetic_number_sort((0..19).to_a) 


# Student Scott Million's use of #index is prett great here:
# def alphabetic_number_sort(array)
#   array.map! {|num| NUMBER_WORDS[num]}
#   array.sort.map {|num| NUMBER_WORDS.index(num)}
# end

# p alphabetic_number_sort((0..19).to_a) 






