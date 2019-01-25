# PEDAC


# Problem
# Write a method that takes an Array as an argument, and reverses its elements in place
# Mutate the Array passed into the method. The return value should be the same Array object.


# Examples / Test Cases



# Data Structures
# array, integer, strings

# Algorithms
# define a method called 'reverse!' which accepts an array caled 'list'
# initiate a 'counter' variable at 0
# call map! on list
#     - for each element, set that element to list[counter - 1]
#     - subtract 1 from counter
# See what happens?

# Code

def reverse!(list)
  counter = 0
  temp_map = []
  list.each do |element|
    temp_map << list[counter - 1]
    counter -= 1
  end
  counter = 0
  list.map! do |element|
    element = temp_map[counter]
    counter += 1
    element
  end
  list
end


# Book Answer

# def reverse!(array)
#   left_index = 0
#   right_index = -1

#   while left_index < array.size / 2
#     array[left_index], array[right_index] = array[right_index], array[left_index]
#     left_index += 1
#     right_index -= 1
#   end

#   array
# end



p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []




















