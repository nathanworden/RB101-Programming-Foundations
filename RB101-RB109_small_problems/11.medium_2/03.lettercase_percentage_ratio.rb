# PEDAC

# Problem
# Write a method that takes a string and returns a hash that contains
# three entries:
# 1) The percentage of characters in the string that are lowercase letters
# 2) The percentage of characters that are uppercase letters
# 3) The percentage of characters that are neither
# input: string
# output: hash

# Examples / Test Cases:
# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
# letter_percentages('Nathan Mark Worden has $40') == {lowercase: 61.5, uppercase: 11.5, neither: 26.9}

# Question, what do we round to? Assumption: one decimal place

# Data Structures / Algorithms:
# Hash
# Integers
# Float
# Strings
# Arrays?

# Algorithm
# define a method named 'letter_percentages' which accepts a single string as a parameter
# Define an empty hash named 'percentages'
# enter a key into 'percentages' with the name 'lowercase'. Set this equal
# to the number of lowercase characters divided by the number of total characters
# Ditto uppercase and neither
# Return the hash

# Code

def letter_percentages(string)
  percentages = {}
  length = string.length.to_f
  percentages[:lowercase] = ((string.count('a-z') / length) * 100).round(1)
  percentages[:uppercase] = ((string.count('A-Z') / length) * 100).round(1)
  percentages[:neither] = ((string.count('^a-z', '^A-Z') / length) * 100).round(1)
  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('Nathan Mark Worden has $40') == {lowercase: 61.5, uppercase: 11.5, neither: 26.9}



