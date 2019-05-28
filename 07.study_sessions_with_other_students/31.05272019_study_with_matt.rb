# Triangle Sides
# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# Examples:

# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid





# PEDAC

# Problem
# input: 3 integers or floats (the sides of the trial)
# output: symbol :equilateral, :isosceles, :scalene, or :invalid 

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length

# Longest side cannot be greater than or equal to the sum of the two shorter sides


# Examples / Test Cases
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid
# triangle(9, 9, 9) == :equilateral
# triangle(5.0, 2.4, 1.3) == :invalid

# Data Structures
# Array

# Algorithm
# define a method called 'triangle' which accepts 3 integers or floats
# Find the longest side (Note that there could be 3, 2, or 1 longest side)
# Find middle length side (Note: There may not be one, or there could be 2 or 1)
# Find shortest side( Note: there could be up to 3 shortest sides)
# If the two shortest sides are less than or equal the logest side, return :invalid
# If All lengths are the same, return :equilateral
# If 2 sides are the same, and the 3rdd is different, return :isoceles
# If all 3 sides are different lengths, return :scalene

# Code


def triangle(*array)
  sorted = array.sort
  return :invalid if sorted[0] + sorted[1] <= sorted[2]
  return :equilateral if array.uniq.size == 1
  return :scalene if array.uniq.size == 3
  return :isosceles  if array.uniq.size == 2
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
p triangle(9, 9, 9) == :equilateral
p triangle(5.0, 2.4, 1.3) == :invalid



