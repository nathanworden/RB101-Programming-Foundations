# PEDAC

# Problem
# Input: integer (Total number of switches)
# Output: An Array (Whichs lights are on afte `n` repetitions)
# `n` switches
# Switches are off initially
# Walk through and switch multiples of 1, then multiples of 2, etc.

# Example

# 1   0 0 0 0 0 0 0 0 0 0      
# 2   0 X 0 X 0 X 0 X 0 X
# 3   0 X X X 0 0 0 X X X
# 4   0 X X 0 0 0 0 0 X X
# 5   0 X X 0 X 0 0 0 X 0
# 6   0 X X 0 X X 0 0 X 0
# 7   0 X X 0 X X X 0 X 0
# 8   0 X X 0 X X X X X 0
# 9   0 X X 0 X X X X 0 0
# 10  0 X X 0 X X X X 0 X     [1, 4, 9]


# 1000_lights(5) == [1, 4]
# 1000_lights(10) == [1, 4, 9]

# Data Structures 
# Array, integers

# Algorithm
# initialize an array of 0's the length of the input 'n'
# initialize a variable called 'multiple' pointed towards the integer 1
# iterate through the array with map with index
# If the element's index is a multiple of the 'multiple' variable, 
# return the opposite of what the element currently is
# For each iteration increase the 'multiple' variable by one and update
# the array

def thousand_lights(n)
  lights = Array.new(n, false)
  n.times do |num|
    lights.map!.with_index do |light, index|
      if (index + 1) % (num + 1) == 0
        !light
      else
        light
      end
    end
  end
  lights.map.with_index {|element, index| (index + 1) if element}.compact
end


p thousand_lights(5) == [1, 4]
p thousand_lights(10) == [1, 4, 9]
p thousand_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]







