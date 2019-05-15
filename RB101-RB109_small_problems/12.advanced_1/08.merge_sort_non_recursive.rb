# Write a method that performs a non-recursive merge sort

# Algorithm
# select the odd elements
# transform thos odd elements into a sorted array by combining them
    # with the element after them. 
    # If there is no element after them, just return the odd element
# Keep doing this until there is only one element left


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


def merge_sort(array)
  
  sliced = array.each_slice(1).to_a
  sliced[-2] = merge(sliced[-2], sliced[-1]) if sliced.size.odd?
  sliced.pop if sliced.size.odd?

  loop do
    even_index = 0
    odd_index = 1
    (sliced.size / 2).times do
      sliced[even_index] = merge(sliced[even_index], sliced[odd_index])
      sliced[odd_index] = nil
      even_index += 2
      odd_index += 2
    end
    sliced.compact!
    break if sliced.size == 1
  end
  sliced[0]
end





p merge_sort([9, 5, 7, 1, 20]) == [1, 5, 7, 9, 20]
p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]





