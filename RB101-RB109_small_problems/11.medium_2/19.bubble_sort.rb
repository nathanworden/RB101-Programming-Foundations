#Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

# PEDAC
# Problem
# Input: Array
# Input: Array (mutated, sorted)

# Examples / Test Cases:

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
# Array

# Algorithm
# Initiate a 'first' variable to 0
# Initiate a 'second' varibale to 1

# any_switch? = true

# loop do
# size of array - 1 times:
  # any_switch = false if array[first] > array[second]
  # array[first] = [first, second].min
  # array[second] = [first, second].max
  # first += 1
  # second += 1
# break if any_switch == false


# Code

require 'pry'

def bubble_sort!(array)
  loop do 
    any_switch = 'no changes'
    first = 0
    second = 1
    (array.size - 1).times do 
        any_switch = 'change' if array[first] > array[second]
        array[first], array[second] = [array[first], array[second]].min, [array[first], array[second]].max
        first += 1
        second += 1
    end
    break if any_switch == 'no changes'
  end
  array
end


# array = [5, 3]
# bubble_sort!(array)
# p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)







