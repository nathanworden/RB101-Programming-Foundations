# PEDAC

# Problem

def transpose(matrix)
  output = []
  rows = matrix.size
  columns = matrix[0].size
  (0...columns).each do |column_index|
      current_row = (0...rows).map {|row_index| matrix[row_index][column_index]}
      output << current_row
  end
  output
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]