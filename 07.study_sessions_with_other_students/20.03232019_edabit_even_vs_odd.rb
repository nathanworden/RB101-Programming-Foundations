# Problem

# Input: array of integers
# Output: An integer. The number of "liked spots"
# An odd number likes (odd, even), (even, odd), (odd, odd)
# An odd number does NOT like (even, even)
# Even numbers this is the inverse

# Examples / Test Cases
# available_spots([0, 4, 6, 8], 9) == 0
# 9 likes NONE of the following spots: [0, __, 4], [4, __ , 6], [6, __, 8] b/c all of his neighbors are even.
# available_spots([0, 4, 6, 8], 12) == 3
# 12 likes ALL of the spots.
# available_spots([4, 4, 4, 4, 5], 7) == 1
# 7 dislikes every spot except the last one at: [4, __, 5].
# available_spots([4, 4], 8) == 1

# Data Structures
# Array
# Integers


# Algorithm
# Define method 'available_spots' which accepts an array and an integer
# Initiate a count variable to 0
# Iterate through each element of the array
# If the element is the first or last element, skip
# Check and see if the current element and the element after are both the opposite of the input integer (even/odd)
# If they are not, add one to count
# If  they are, next
# return the count

# Code

def available_spots(arr, num)
  count = 0
  arr.each_with_index do |item, index|
    next if index == arr.count - 1
    if item.odd? == arr[index + 1].odd? 
      if item.odd? != num.odd?
        next
      else
        count += 1
      end
    else
      count += 1
    end
  end
  count
end

p available_spots([0, 4, 6, 8], 9) == 0
# 9 likes NONE of the following spots: [0, __, 4], [4, __ , 6], [6, __, 8] b/c all of his neighbors are even.
p available_spots([0, 4, 6, 8], 12) == 3
# 12 likes ALL of the spots.
p available_spots([4, 4, 4, 4, 5], 7) == 1
# 7 dislikes every spot except the last one at: [4, __, 5].
p available_spots([4, 4], 8) == 1


