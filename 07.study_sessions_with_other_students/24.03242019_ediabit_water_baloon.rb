# Water Balloon

# Problem
# Given an array with an odd amount of elements, return a new array with the
# same amount of elements but counting up to the middle elements number 
# and then counting down


# Examples / Test Cases 
# p pop([0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0]) == [0, 1, 2, 3, 4, 5, 4, 3, 2, 1, 0]
# p pop([0, 0, 0, 0, 4, 0, 0, 0, 0]) == [0, 1, 2, 3, 4, 3, 2, 1, 0]
# p pop([0, 0, 0, 3, 0, 0, 0]) == [0, 1, 2, 3, 2, 1, 0]
# p pop([0, 0, 2, 0, 0]) == [0, 1, 2, 1, 0]
# p pop([0, 1, 0]) == [0, 1, 0]
# p pop([0]) == [0]

# Data Structures
# arrays, integers 

#Algorithm
# Take the lengths of the array and divide it by 2 using integer divison
# Create an array that goes from 0 to 1 - that number
# Create another array that is the reverse of that
# Join the two arrays together with the middle number of the original array between the two


# Code

def pop(arr)
  half = arr.length / 2
  up_arr = []
  half.times {|num| up_arr[num] = num}
  down_arr = up_arr.reverse
  up_arr + [half] + down_arr
end


p pop([0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0]) == [0, 1, 2, 3, 4, 5, 4, 3, 2, 1, 0]
p pop([0, 0, 0, 0, 4, 0, 0, 0, 0]) == [0, 1, 2, 3, 4, 3, 2, 1, 0]
p pop([0, 0, 0, 3, 0, 0, 0]) == [0, 1, 2, 3, 2, 1, 0]
p pop([0, 0, 2, 0, 0]) == [0, 1, 2, 1, 0]
p pop([0, 1, 0]) == [0, 1, 0]
p pop([0]) == [0]