# PEDAC

# Problem
# A Rational Number is any number that can be represented as the result
# of the division between two integers. e.g. 1/3, 3/2
# Write two methods:
#     a) Method accepts a Rational number as an argument and returns an Array of the denominators that are part of an Egyptian Fraction representation of the number
#     b) Method that accepts an Array of numbers and calculates the resulting Rational number.

# Examples / Test Cases
egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]


unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)


# Data Structures
# Array

# Algorithm
# Initiate output array
# If numerator is greater than the denominator:
    # Subtract the denominator from the numberator and push "1" to output array
# If numerator is less than denominator:
    # 