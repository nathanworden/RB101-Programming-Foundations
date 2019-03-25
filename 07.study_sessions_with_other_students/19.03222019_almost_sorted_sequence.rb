# PEDAC

# Problem
# Write a method that returns true if an array is almost sorted. False otherwise
# One element acending or decending sequence

# Examples / Test Cases
# almost_sorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41] ) ➞ true

# almost_sorted([6, 5, 4, 7, 3]) ➞ true

# almost_sorted([6, 4, 2, 0]) ➞ false
# // Sequence is already sorted.

# almost_sorted([7, 8, 9, 3, 10, 11, 12, 2]) ➞ false
# // Requires removal of more than 1 item.

# almost_sorted(10000, 99, 15, 20) == true

# Data Structure
# array, integer

#Algorithm

# define method, takes one array as input
# initate an indicator to 0
# iterate through each element comparing it to the element that comes next
# If the element that comes next is greater than the current element,
# Add one to the indicator
# If the element that comes next is less than the current elemet,
# Subtract one to the indicator
# If the indicator ends up beng greater than 0 then on the whole the array was increasing
# If the indicator end up being less than 0 then then on the whole the array was decresing
# Select the one element that throws off the pattern
# If there is no element that throws off this pattern, or there is more than one
# Return fales
# Otherwise, return true

def almost_sorted(arr)
  indicator = 0
  arr.each_with_index do |item, index|
    if arr[index + 1] == nil
      indicator
    elsif arr[index + 1] > item
      indicator += 1 
    else 
      indicator -=1
    end
  end
  
  if indicator > 0
    pattern_jacker = []
    arr.each_with_index do |item, index|
      if arr[index + 1] == nil
        pattern_jacker
      elsif arr[index + 1] < item
        pattern_jacker << item
      end
    end
  else
    pattern_jacker = []
    arr.each_with_index do |item, index|
      if arr[index + 1] == nil
        pattern_jacker
      elsif arr[index + 1] > item
        pattern_jacker << item
      end
    end
  end
  return false if pattern_jacker.size != 1
  true
end


p almost_sorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41] ) == true
p almost_sorted([6, 5, 4, 7, 3]) == true
p almost_sorted([6, 4, 2, 0]) == false
p almost_sorted([7, 8, 9, 3, 10, 11, 12, 2]) == false
p almost_sorted([10000, 99, 15, 20]) == true





