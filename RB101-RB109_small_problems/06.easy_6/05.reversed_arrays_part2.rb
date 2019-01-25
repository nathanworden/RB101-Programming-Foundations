def reverse(array)
  counter = 0
  new_array = []
  array.each do |element|
    new_array << array[counter - 1]
    counter -= 1
  end
  new_array
end


# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 # => true



# Book Answer

# def reverse(array)
#   result_array = []
#   array.reverse_each { |element| result_array << element }
#   result_array
# end



# Further Exploration


# def reverse(array)
#   result_array = []
#   array.inject(-1) do |word| 
#     result_array << array[word] 
#     word -=1
#   end
#   result_array
# end

# def reverse(arr)
#   new_arr = []
#   arr.reduce(-1) do |pos_in_arr|
#     new_arr << arr[pos_in_arr]
#     pos_in_arr -= 1
#   end
#   new_arr
# end

p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true



# Stephanie Cunnane's solution using reduce:

# def reverse(arr)
#   arr.reduce([]) { |memo_arr, elem| memo_arr.unshift(elem) }
# end










