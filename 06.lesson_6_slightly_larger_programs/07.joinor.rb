# PEDAC

# Problem
# Write a method called joinor that will produce a list of integers separated by commas
# with an 'or' string between the second to last and last integer.
# The method should be able to substitute out different punctuation for the commas
# as well as the 'or'. The method will default to commas and 'or' but if you pass
# in a different delimeter or word, it will use those.

# Examples / Test Cases
# joinor([1, 2])                   # => "1 or 2"
# joinor([1, 2, 3])                # => "1, 2, or 3"
# joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

# Data Strcutures
# Arrays, strings, integers

# Algorithm
# define a method called 'joinor' which accepts 3 parameters
# The first parameter is an array of integers
# The second parameter is default to ', ' but can be changed to any other string
# The third parameter is default to 'or' but can be changed to any other string
# In the case that the array has only one element, only return that element
# In the case that the array has only two elements, return 'num1 or num2'
# In the case that the array has 3 or more elements:
# insert the third parameter to the second to last spot in the array
# join the array together using the second parameter
# puts out the final string


# Code

def joinor(arr, delimeter=', ', word='or')
  case arr.size
  when 1 then return arr
  when 2 then puts "#{arr[0]} or #{arr[1]}"
  when 3
    end_arr = arr.pop
    puts "#{arr.join(delimeter)} #{word} #{end_arr}"
  end
end


joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
