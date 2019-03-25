# def flip_array(arr)
#   return [] if arr == []
#   output = ''
#   if arr[0].class == Integer
#     output = arr.map {|num| [num]}
#   elsif arr[0].class == Array
#     output = arr.map {|num| num.pop}
#   end
#   output
# end


def flip_array(arr)
  return [] if arr == []
  if arr == arr.flatten
    output = arr.map {|num| [num]}
  else
    output = arr.map {|num| num.pop}
  end
end



p flip_array([1, 2, 3, 4]) == [[1], [2], [3], [4]]
p flip_array([[5], [6], [9]]) == [5, 6, 9]
p flip_array([[7], [8], [9], [55]]) == [7, 8, 9, 55]
p flip_array([7, 8, 9, 55]) == [[7], [8], [9], [55]]
p flip_array([[1], [2]]) == [1, 2]
p flip_array([5, 8]) == [[5], [8]]
p flip_array([2]) == [[2]]
p flip_array([]) == []