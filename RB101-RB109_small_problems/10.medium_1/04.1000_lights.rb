# PEDAC


# Problem
# n switches
# All switches start in the "off" position
# Do n rounds where you toggle the switches that are multiples of the number round you are on
# Keep track of the state that each switch is in each time

# Examples / Test Cases

#0  x x x x x
#1  0 0 0 0 0
#2  0 x 0 x 0
#3  0 x x x 0
#4  0 x x 0 0
#5  0 x x 0 x

#0   x x x x x x x x x x
#1   0 0 0 0 0 0 0 0 0 0
#2   0 x 0 x 0 x 0 x 0 x
#3   0 x x x 0 0 0 x x x
#4   0 x x 0 0 0 0 0 x x
#5   0 x x 0 x 0 0 0 x 0
#6   0 x x 0 x x 0 0 x 0
#7   0 x x 0 x x x 0 x 0
#8   0 x x 0 x x x x x 0
#9   0 x x 0 x x x x 0 0
#10  0 x x 0 x x x x 0 x


# thousand_switches(5) == [1, 4]
# thousand_switches(10) == [1, 4, 9]


# Data Structures
# array, boolean,

# Algorithm
# define a method called 'thousand_switches' which accepts a single integer as an argument
# Initiate a new 'array' with integer number of 'false' elements
# Iterate through the array integer number of times
# For each element in array, flip the current state of the element if its index is a multiple of the integer of the time that the iteration is on
# initiate a new array called 'output'
# for each element in 'array' that is flipped to 'true' push the index of that element to output
# return output

# Code


def thousand_switches(integer)
  array = Array.new(integer, false)
  1.upto(integer) do |n|
    array.map!.with_index do |element, index| 
      if (index + 1) % n == 0
        !element
      else
        element
      end
    end
  end
  output = []
  array.each_with_index {|element, index| output << (index + 1)  if element == true }
  output
end



p thousand_switches(5) == [1, 4]
p thousand_switches(8) == [1, 4]
p thousand_switches(10) == [1, 4, 9]








