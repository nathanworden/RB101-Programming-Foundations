# PEDAC


# Problem
# Create a method that takes two integers as arguments.
# The first argument is a count
# The second argument is the first number of a sequence that your method will create
# The method should return an Array that contains the number of elements as the count argument
# The values of each element will be the multiples of the starting number.
# The count argument will always have a value of 0 or greater
# The starting number can be any integer value
# If the count is 0, an empty list should be returned.

# Examples / Test Cases
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

# Data Structures
# array, integers

# Algorithm
# define a method called 'sequence' which accepts two integers, 'count' and 'first_num'
# initiate an empty array called 'output'
# while the size of 'output' is less than 'count':
# push the result of 2 * first_num to output
# first_num *= 2
# return output

# Code

def sequence(count, first_num)
  output = []
  input = first_num
  while output.size < count
    output << input
    input += first_num
  end
  output
end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []




# Refactored! Good job me!

def sequence(count, first_num)
  return Array.new(count, first_num) if first_num == 0
  array = first_num > 0 ? (first_num..count*first_num).to_a : first_num.downto(count*first_num).to_a
  array.delete_if {|element| element % first_num != 0}
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, 7) == [7, 14, 21, 28]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []



# Book Answer

# def sequence(count, first)
#   (1..count).map {|idx| idx * first }
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, 7) == [7, 14, 21, 28]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []






