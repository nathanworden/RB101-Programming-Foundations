# PEDAC

# Problem
# Input: string
# Output: Hash (contains 3 entries)
    # percentage of characters in the string that are lowercase
    # percentage of characters in the string that are uppercase
    # percentage of characters in the string that are neither

# Examples
# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
# letter_percentages('Launch School is GREAT') == {lowercase: 54.5, uppercas: 31.8 , neither: 13.6 }

# Data Structures:
# Hash
# Array

# Algorithm
# Convert the string to an array of characters
# Select all the upper case characters
    # count them
    # divide them by the total characters
    # push this number to the hash as the value for the 'uppercase' key
# Select all the lower case characters
    # count them
    # divide them by the total characters
    # push this number to the hash as the value for the 'lowercase' key
# hsh[neither] = 100 - hsh[lowercase] - hsh[uppercase] 


# Code

def letter_percentages(string)
  uppercase = string.chars.select {|char| char.match?(/[A-Z]/) }
  lowercase = string.chars.select { |char| char.match?(/[a-z]/) }
  hsh = {}
  hsh[:lowercase] = (lowercase.count.to_f / string.size) * 100
  hsh[:uppercase] = (uppercase.count.to_f / string.size) * 100
  hsh[:neither] =  100 - hsh[:lowercase] - hsh[:uppercase]
  hsh
end



# p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('Launch School is GREAT') #== {lowercase: 54.5, uppercas: 31.8 , neither: 13.6 }









