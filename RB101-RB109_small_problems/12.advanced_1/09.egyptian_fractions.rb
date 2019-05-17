# PEDAC

# Problem
# A Rational Number is any number that can be represented as the result
# of the division between two integers. e.g. 1/3, 3/2
# Write two methods:
#     a) Method accepts a Rational number as an argument and returns an Array of the denominators that are part of an Egyptian Fraction representation of the number
#     b) Method that accepts an Array of numbers and calculates the resulting Rational number.

# Examples / Test Cases
# egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]


# unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)


# Data Structures
# Array

# Algorithm
# Initiate output array
# Initiate a 'unit_numerator' variable to 1
# Initiate a 'unit_denominator' variable to 1
# Initiate a 'current' variable to Rational(unit_numerator, unit_denominator)
# If Rational(input_numerator, input_denominator) - Rational(unit_numerator, unit_denominator)
    # Is negative, NEXT. Meaning, increment 'unit_denominator' by one and try again
# If above is positive, push 'unit_denominator' to output array
    # and update 'current' variable to be the remainder
# Loop until result is 0

# Code

def egyptian(input_fraction)
  output = []
  unit_denominator = 1
  current = Rational(1, unit_denominator)

  loop do 
    
    if input_fraction - current >= 0
      output << unit_denominator
      input_fraction = input_fraction - current
    end
      unit_denominator += 1
      current = Rational(1, unit_denominator)

    break if input_fraction == 0
  end
  output
end



p egyptian(Rational(2, 1))    == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

puts

def unegyptian(array)
  array.map! {|num| Rational(1, num)}.reduce(:+)
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1) 




