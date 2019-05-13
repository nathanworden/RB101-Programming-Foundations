# PEDAC

# Problem
# Write a method that takes two sorted Arrays as arguments, and returns
# a new Array that contains all elements from both arguments in sorted order
 
 # Examples / Test Cases

# merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]
# merge([3, 8, 23, 55], [9, 10, 11, 25, 54, 56]) = [3, 8, 9,19, 11, 23, 25, 54, 55, 56]

# Data Structures
# Array

# Algorithm
# Initialize a first_array_index variable to 0
# Initialize a second_array_index variable to 0
# Initialize an output arra to []
# Loop through the first array.
#     If the element at first_array_index is smaller than second_array_index
#         Then push it to the output array
#         And increment the first_array_index variable
#     If the the element is greater than the second_array_index
#         Then push the element from the secon array
#         And increment the second_array_index variable
# If an element gets compared to nil, push the element that is not nil
# Return the output array


# Code


def merge(arr1, arr2)
  first_array_index = 0
  second_array_index = 0
  output = []
  loop do
      if arr1[first_array_index] == nil
        (second_array_index...arr2.size).each do |num|
          output << arr2[num]
        end
        return output
      end

      if arr2[second_array_index] == nil
        (first_array_index...arr1.size).each do |num|
          output << arr1[num]
        end
        return output
      end

      if arr1[first_array_index] == arr2[second_array_index]
        output << arr1[first_array_index] << arr2[second_array_index]
        first_array_index += 1
        second_array_index += 1
      elsif arr1[first_array_index] < arr2[second_array_index]
        output << arr1[first_array_index]
        first_array_index += 1
      else 
        output << arr2[second_array_index]
        second_array_index += 1
      end
      break if arr1[first_array_index] == nil && arr2[second_array_index] == nil
  end
  output
end




# Book Answer

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end
  result.concat(array2[index2..-1])
end



p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
p merge([3, 8, 23, 55], [9, 10, 11, 25, 54, 56]) == [3, 8, 9, 10, 11, 23, 25, 54, 55, 56]






