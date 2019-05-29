# PEDAC
# Problem
# Input: an integer (The total number of switches)
# Output: An Array (Identifies which lights are ON after )

# Algorithm
# Initiate an array of n x's
# Iterate through the array n number of times
# For each element, if the index is evenly divisible by the num cycle you are on, flip thes switch





# Code

def switch!(light)
  if light == 'x'
    return 'O'
  elsif light == 'O'
    return 'x'
  end
end

def thousand_lights(n)
  set = Array.new('x', 10)
  1.upto(10) do |num|
    set.each_with_index do |light, index|
      if index %
    end
  end
end