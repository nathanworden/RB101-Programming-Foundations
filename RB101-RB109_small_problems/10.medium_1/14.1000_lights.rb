# PEDAC
# Problem
# Input: an integer (The total number of switches)
# Output: An Array (Identifies which lights are ON after )

# Algorithm
# Initiate an array of n x's
# Iterate through the array n number of times
# For each element, if the index is evenly divisible by the num cycle you are on, flip thes switch
# Select the elements that are on.


# [x, x, x, x, x, x, x]

# [O, O, O, O, O, O, O]
# [O, x, O, x, O, x, O]
# [O, x, x, x, O, O, O]
# [O, x, x, O, O, O, O]
# [O, x, x, O, x, O, O]
# [O, x, x, O, x, x, O]
# [O, x, x, O, x, x, x]







# Code

def switch!(light)
  if light == 'x'
    return 'O'
  elsif light == 'O'
    return 'x'
  end
end

def thousand_lights(n)
  set = Array.new(n, 'x')
  1.upto(n) do |num|
    set.map!.with_index do |light, index|
      if (index + 1) % num == 0
        switch!(light)
      else
        light
      end
    end
  end
  output = []
  set.each_with_index do |element, index|
    output << (index + 1) if element == 'O'
  end
  output
end


p thousand_lights(10) == [1, 4, 9]
p thousand_lights(5) == [1, 4]
p thousand_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]









