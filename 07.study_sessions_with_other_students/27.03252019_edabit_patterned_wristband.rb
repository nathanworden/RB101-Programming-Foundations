# Patterened Wristband

# Input: An array of arrays
# Output Boolean
# True if the section can be classifed into one of the 4 types, false otherwise
# 4 tyes: horizontal, vertical, diagnal left, diagonal right


# Algorightm
# Check for the following:
# Horizontal: Every element of each sub array is the same
# Vertical: Every element with the same index as every other element with that index is the same
# Diagonal Left
# Diagonal Right:
# Whatever the element is in the first array, the next array has to
# have that same element in the index + 1 spot. Unless it is the 
# Last element of the array, or unless it is the last sub array


# Code

def horizontal?(arr)
  arr.all? do |sub_arr| 
    sub_arr.all? {|element| sub_arr[0] == element}
  end
end

def vertical?(arr)
  columns = arr.transpose
  horizontal?(columns)
end

def diagonal_right(arr)
  arr[0][0] == arr[1][1] && arr[0][0] == arr[2][2] &&
  arr[0][1] == arr[1][2] &&
  arr[1][0] == arr[2][1] && arr[1][0] == arr[3][2] &&
  arr[2][0] == arr[3][1]
end

def diagonal_left(arr)
  arr[0][2] == arr[1][1] && arr[0][2] == arr[2][0] &&
  arr[0][1] == arr[1][0] &&
  arr[1][2] == arr[2][1] && arr[1][2] == arr[3][0] &&
  arr[2][2] == arr[3][1]
end

def is_wristband(arr)
  horizontal?(arr) || vertical?(arr) || diagonal_right(arr) || diagonal_left(arr)
end

# Examples / Test Cases
p is_wristband( 
[['A', 'A'], 
['B', 'B'], 
['C', 'C']]) == true


p is_wristband(
[['A', 'B'], 
['A', 'B'], 
['A', 'B']]) == true


p is_wristband(
[['A', 'B', 'C'], 
['C', 'A', 'B'], 
['B', 'C', 'A'], 
['A', 'B', 'C']]) == true


p is_wristband(
[['A', 'B', 'C'], 
['C', 'A', 'B'], 
['D', 'C', 'A'], 
['E', 'D', 'C']]) == true

p is_wristband(
[['A', 'B', 'C'], 
['B', 'A', 'B'], 
['D', 'C', 'A'], 
['E', 'D', 'C']]) == false

p is_wristband(
[['A', 'B', 'C'], 
['B', 'C', 'A'], 
['C', 'A', 'B'], 
['A', 'B', 'A']]) == true

p is_wristband(
[['A', 'B', 'C'], 
['B', 'C', 'D'], 
['C', 'D', 'E'], 
['D', 'E', 'F']]) == true

p is_wristband(
[['A', 'B', 'C'], 
['B', 'C', 'D'], 
['C', 'D', 'E'], 
['D', 'E', 'E']]) == true

p is_wristband(
[['A', 'B', 'C'], 
['B', 'C', 'D'], 
['C', 'D', 'E'], 
['D', 'F', 'E']]) == false

p is_wristband(
[['A', 'B', 'C'], 
['B', 'D', 'A'], 
['C', 'A', 'B'], 
['A', 'B', 'A']]) == false

p is_wristband(
[['A', 'B'],  
['A', 'B'], 
['A', 'C'],
['A', 'B']]) == false

p is_wristband(
[['A', 'A'],
['B', 'B'],
['C', 'C'],
['D', 'B']]) == false
 
p is_wristband(
[['A', 'A'],
['B', 'B'],
['C', 'C'],
['C', 'C']]) == true



