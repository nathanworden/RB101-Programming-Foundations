# Sum of Digits
# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.

# MY ANSWER:

def sum(num)
  arr = []
  loop do
    num, modulus = num.divmod(10)
    arr << modulus
    break if num == 0
  end
  arr.reduce(:+)
end


# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# MY ANSWER (CHALLENGE)
  def sum(num)
    num.digits.sum
  end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45


# BOOK ANSWER

# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end

# Discussion
# This exercise proves to be tricky in a couple of ways. First, if you tried to split the number while it was an integer you probably got an error. The key here is to convert it to a string, then split it, like this:

# 23.to_s.chars # => ["2", "3"]
# If you did the last exercise, you may think of using #reduce to sum the numbers in the array. If you tried this, however, you probably got unexpected results. #reduce worked, but instead of adding integers, it was adding strings, which isn't what you want. Instead, the array of strings needs to be converted to an array of integers. We can do this using #map and Ruby's shorthand syntax:

# ["2", "3"].map(&:to_i) # => [2, 3]
# If that looks confusing, just remember that it's the same as this:

# ["2", "3"].map { |element| element.to_i } # => [2, 3]
# It's possible to invoke all of these methods in one statement due to the return values of each method. All four of the methods used in the solution return the object we need to continue chaining methods. The following code shows the return value of each method:

# 23.to_s        # => "23"
#   .chars       # => ["2", "3"]
#   .map(&:to_i) # => [2, 3]
#   .reduce(:+)  # => 5


  