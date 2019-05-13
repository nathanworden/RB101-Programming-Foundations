# PEDAC

# Problem


# Code

def merge_sort(array)
  if array.size <= 1
    return array
  end

  half = array.size / 2
  halfs = array.each_slice(half).to_a

  if halfs.all? {|sub_arr| sub_arr.size == 1}

  else
    halfs.each {|sub_arr| merge_sort(sub_arr)}
  end
end

p merge_sort([9, 5, 7, 1]) #== [1, 5, 7, 9]