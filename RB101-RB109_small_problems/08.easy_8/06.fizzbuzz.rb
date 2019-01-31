# PEDAC


# Problem
# Write a method that takes two arguments
# The first argument is the starting number, the second is the ending number.
# Print out all numbers between the two numbers except numbers divisible by 3 and 5
# If the number is divisble by 3, print "Fizz"
# If the number is divisible by 5, print "Buzz"
# If the number is divisible by 3 and 5, print "FizzBuzz"


# Examples / Test Cases
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Data Structures
# integers, possible array

# Algorithm
# define a method called 'fizbuzz' which accepts two integers as arguments
# from 'start_num' to 'end_num':
# If 'current_num' is divisble by 3 and 5, print 'FizzBuzz'
# Elsif 'current_num' is divisible by 5, print "Buzz"
# Elsif 'current_num' is divisble by 3, print "Fizz"
# Else, print 'current_num'
# end

# Code

def fizzbuzz(start_num, end_num)
  result = []
  (start_num..end_num).each do |current_num|
    if current_num % 5 == 0 && current_num % 3 == 0
      result << "FizzBuzz"
    elsif current_num % 5 == 0
      result << "Buzz"
    elsif current_num % 3 == 0
      result << "Fizz"
    else 
      result << current_num
    end
  end
    puts result.join(', ')
end


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, 




# Book Answer

# def fizzbuzz(starting_number, ending_number)
#   result = []
#   starting_number.upto(ending_number) do |number|
#     result << fizzbuzz_value(number)
#   end
#   puts result.join(', ')
# end

# def fizzbuzz_value(number)
#   case
#   when number % 3 == 0 && number % 5 == 0
#     'FizzBuzz'
#   when number % 5 == 0
#     'Buzz'
#   when number % 3 == 0
#     'Fizz'
#   else
#     number
#   end
# end




# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, 
