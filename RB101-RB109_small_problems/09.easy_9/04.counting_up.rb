# PEDAC


# Probelm
# Write a method that takes an integer argument
# Returns an Array of all integers, in sequence, between 1 and the argument

# Example / Test Cases
# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]
# sequence(12) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

# Data Structure
# array

# Algorithm
# define a method called 'sequence' which accepts an 'integer' as an argument
# initiate an empty array called 'output'
# initiate a variable called 'count' equal to 1
# while the size of 'output' is less than 'intger' do the following:
# push count to 'output'
# increment count by 1
# return output

# Code

# def sequence(integer)
#   output = []
#   count = 1
#   while output.size < integer
#     output << count
#     count +=1
#   end
#   output
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]
# p sequence(12) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]


# Another try but worse
# def sequence(integer)
#   count = 1
#   output = []
#   loop do
#     output.size < integer ? output << count : output
#     count += 1
#     break if output.size == integer
#   end
#   output
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]
# p sequence(12) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

# Antoher try, this one was better!
# def sequence(integer)
#   output = []
#   (1..integer).each {|num| output << num}
#   output
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]
# p sequence(12) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]


# And finally, probably my best one yet!

# def sequence(integer)
#   (1..integer).to_a
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]
# p sequence(12) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]



# Further Exploration:
# What do you think sequence should return if the argument is not greater than 0.
# For instance, what should you do if the argument is -1?
# Can you alter your method to handle this case?


def sequence(integer)
  integer > 0 ? (1..integer).to_a : 1.downto(integer).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(12) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
p sequence(-1) == [1, 0, -1]
p sequence(-3) == [1, 0, -1, -2, -3]

























