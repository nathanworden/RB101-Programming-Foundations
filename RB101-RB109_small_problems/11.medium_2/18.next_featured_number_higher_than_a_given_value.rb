# PEDAC
# Write a method that takes a single integer as an argument, and returns the next
# featured number that is greather than the argument.

# Rules
# Multiple of 7
# Digits occur exactly once each
# Odd

# Examples / Test Cases 
# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirement

# Data Structure
# Integer

# Algorithm
# Initiate a 'current' variable to the input integer
# Initiate a loop
# increment 'current' by 1
# Break if current is:
    # Divisible by 7
    # Odd
    # Doesn't have repeating digits
        # turn the number to a string (chars) and then call uniq
        # If the size of the new array is less than the original array, then don't break
# Return current
# If the number is 9_999_999_999 or greater, break and return error

# Code

def featured(integer)
  current = integer
  loop do
    current += 1
    unique = current.to_s.chars.uniq.size == current.to_s.chars.size
    break if current % 7 == 0 && current.odd? && unique
    return "error" if current >= 9_999_999_999
  end
  current
end




# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

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

#   'There is no possible number that fulfills those requirements.'
# end


