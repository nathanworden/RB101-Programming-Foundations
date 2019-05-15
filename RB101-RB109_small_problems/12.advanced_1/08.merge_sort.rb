# PEDAC

# Problem


# Code

# This solution is from here:
# https://gist.github.com/aspyct/3433278

def merge_sort(array)
  if array.size <= 1
    return array
  end

  # Apply "Divide & Conquer" strategy

  # 1. Divide
  mid = array.size / 2
  part_a = merge_sort(array.slice(0, mid))
  part_b = merge_sort(array.slice(mid, array.size - mid))


# 2. Conquer
  array = []
  offset_a = 0
  offset_b = 0
  while offset_a < part_a.count && offset_b < part_b.count
    a = part_a[offset_a]
    b = part_b[offset_b]
  
    if a <= b
      array << a
      offset_a += 1
    else
      array << b
      offset_b += 1
    end
  end
  
  while offset_a < part_a.count
    array << part_a[offset_a]
    offset_a += 1
  end
  
  while offset_b < part_b.count
    array << part_b[offset_b]
    offset_b += 1
  end
  
  return array
end


p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]






# Level 1
# [9, 5, 7, 1]
# part_a = merge_sort([9, 5])
# part_b = merge_sort([7, 1])

    # Level 2-1                   # Level 2-2
    # [9, 5]                        [7, 1]
    # part_a = merge_sort([9])      part_a = merge_sort([7])
    # part_b = merge_sort([5])      part_b = merge_sort([1])

# Level 3-1     # Level 3-2        # Level 3-3      #Level 3-4
# 9                 5                 7                1





