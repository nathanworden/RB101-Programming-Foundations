# PEDAC

# Problem
# input: integer
# output: integer that is:
# Odd number
# a multiple of 7
# digits occur exactly once each

# Examples / Test Cases
# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


# Data Structures
# Array

# Algorithm
# Create an array with a range of numbers from 0 to 9,999,999,999
# Select all the numbers that are odd, a multiple of 7 and whos digits occur exactly once each
# Get rid of all the numbers that are smaller than the input number
# Return the first element of the array


# Code

def uniq?(num)
  num.to_s.chars.uniq.size == num.to_s.chars.size
end

def featured(integer)
  return "There is no possible number that fulfills those requirements" if integer >= 9_999_999_999
  output = []
  num = integer + 1
  loop do
    break if output.size == 1
    if num.odd? && num % 7 == 0 && uniq?(num)
      output << num
    else
      num += 1
    end
  end
  output[0]
end

# Book Answer

# def featured(number)
#   number += 1
#   number += 1 until number.odd? && number % 7 == 0

#   loop do
#     number_chars = number.to_s.split('')
#     return number if number_chars.uniq == number_chars
#     number += 14
#     break if number >= 9_876_543_210
#   end
#   "There is no possible number that fulfills those requirements"
# end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) == "There is no possible number that fulfills those requirements"






