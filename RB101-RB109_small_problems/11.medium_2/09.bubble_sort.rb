# PEDAC

# Problem
# Write a method that takes an Array as an argument and sorts that Array
# using the bubble sort algorithm.
# Sort in-place: mutate the Array passed in as an argument.
# Input: Array
# Output: the same array, sorted from smallest to largest
# Note: strings will also be sorted (ASCII Order)

# Examples / Test Cases

# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)


# Data Structures
# Arrays
# Strings

# Algorithms
# Transform the array by comparing each element to the next element
# Keep looping through the transfrom until there are no more transformations
# to be made

# Code

def bubble_sort!(array)
  loop do
    index = 0
    changes = false
    (array.size - 1 - index).times do
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        changes = true
      end
      index += 1
    end
    break unless changes
  end
  array
end


# def bubble_sort!(arr)
#   bound = arr.size - 1
#   swap = false

#   while !swap
#     bound -= 1
#     swap = true
#     for i in 0..bound
#       if arr[i] > arr[i+1]
#         arr[i], arr[i+1] = arr[i+1], arr[i]
#         swap = false
#       end
#     end
#   end

#   arr
# end

# array = [5, 3]
# p bubble_sort!(array)
# p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)



