# Practice Problems: Sorting, Nested Collections and Working with Blocks
# Over the course of the last three assignments we've gone into some depth regarding sorting, working with nested collection objects and also passing blocks to iterative methods in order to produce a certain output or return value. The best way to really gain a thorough understanding of these programming concepts is by putting them into practice.

# The purpose of these practice problems is to let you practice the specific concepts covered in the last three assignments; in some cases there may exist a Ruby method that lets you achieve the same result as passing a block to an iterative method but that isn't the objective here. Feel free to research those methods if you wish but you should try and solve the problems using the concepts and techniques outlined in the previous assignments.

# If any of the problems appear difficult at first, take the time to break them down and remember to focus on the structure of the collection object, the return value of blocks and methods and the side effects of any methods.

# Practice Problem 1
# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# In this example, p arr.sort gets evaluted first before the do block. 
# which means that the array is sorted based on its string values.
# since strings are evaluated character by character, '10' comes first 
# because it starts with a 1. The only other number that starts with
# a 1 is '11' so then the second character gets compared. '10's second
# character is 0 while '11's second character is 1. So '10' goes before '11'
# The return value is ["10", "11", "7", "8", "9"]

p arr.sort do |a, b|
  a.to_i <=> b.to_i
end

# In this example, we use parenthesis to show that we want to sort the 
# evaluated block and THEN print it out. This gives you 
# ["7", "8", "9", "10", "11"] 
p (arr.sort do |a,b|
    a.to_i <=> b.to_i
  end)

# Another way to do this is to do a one line block. When you do this
# the one line block {...} binds more tightly to arr.sort than
# p to arr.sort, and so the block is evaluated first and the p
# prints out ["7", "8", "9", "10", "11"]
p arr.sort {|a, b| a.to_i <=> b.to_i}

# Finally, the problem asked us to order the array of number strings
# by descending numeric value. Thus far we have only ordered them in
# acending numeric value. To get the order to decend, we put b before
# a in the comparison block:
p arr. sort {|a, b| b.to_i <=> a.to_i}
































# Solution

# arr.sort do |a,b|
#   b.to_i <=> a.to_i
# end
# # => ["11", "10", "9", "8", "7"]
# The key here is understanding that strings are compared character by character, so '11' will be evaluated to be lesser than '7'. In order to compare the strings as integers, we need to convert them to integers within the block.

# The second part of solving this problem is sorting the array in reverse order. To do this we simply switch the order of b and a in the block.