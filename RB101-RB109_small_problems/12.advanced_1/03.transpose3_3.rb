# PEDAC

# Problem
# Write a method that takes a 3 x 3 matric in Array of Arrays format
# and returns the trnaspose of the original matrix. 
# Do not modify the orignal matrix.

# Example: 

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# Data Structres
# Array

# Algorithm
# define three new empty arrays: 1st row, 2nd row, 3rd row
# The 1st row has: element [0][0], [1][0], and [2][0] from the original array
# The 2nd row has: element [0][1], [1][1], and [2][1] from the original array
# The 3rd row has: element [0][2], [1][2], and [2][2] from the original array
# Push each of these into the new arrays and return the new array of arrays

# code

def transpose(matrix)
  first_row = [matrix[0][0], matrix[1][0], matrix[2][0]]
  second_row = [matrix[0][1], matrix[1][1], matrix[2][1]]
  third_row = [matrix[0][2], matrix[1][2], matrix[2][2]]
  [first_row, second_row, third_row]
end

# code 2nd try

def transpose(matrix)
  output = []
  (0..2).each do |column_index|
      current_row = (0..2).map {|row_index| matrix[row_index][column_index]}
      output << current_row
  end
  output
end



matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]



# Book answer

# def transpose(matrix)
#   result = []
#   (0..2).each do |column_index|
#       new_row = (0..2).map {|row_index| matrix[row_indx][column_index]}
#       result << new_row
#   end
#   result
# end








