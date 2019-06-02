# PEDAC
# Problem: Write a method that takes the lengths of the 3 sides of a triangle
# as arguments, and returns a symbol depending on whether the triangle is 
# equilateral, isoceles, scalene, or invalid

# Rule1: The sum of the lengths of the two shortest sides must be greater than
# the length of the longest side.

# input: 3 numbers.  (denoting the sides of a triangle)
# ouptut: symbol (:equilateral, :isoceles, :scalene, or :invalid)

# Data Structures
# Array? but probably not

# Algorithm
# sort the array from smallest to largest
# Check if arr[0] + arr[1] > arr[2]. If not, return false
# Check if arr[0] == arr[1] && arr[1] == arr[2]. If so, return :equilateral
# Check if any element in arr is equivalent to another element
    # If so, return :isosceles (Since equilateral has already been checked, the most that could be the same are 2 side.)
# Else, return :scalene

# Code

def triangle(side1, side2, side3)
  arr = [side1, side2, side3].sort
  return :invalid if arr[0] + arr[1] <= arr[2]
  return :equilateral if arr[0] == arr[1] && arr[1] == arr[2]
  return :isosceles if arr.uniq.size == 2
  return :scalene if arr.uniq.size == 3
end

p triangle(0, 3, 3) == :invalid
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene

