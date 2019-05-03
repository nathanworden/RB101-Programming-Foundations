# PEDAC

# Problem
# Write a method that takes the length of the 3 sides of a triangle
# as arguments, and returns a symbol depending on whether the triangle is 
# equilateral, isosceles, scalene, or invalid
# Input: Three integers
# Output: Symbol - equilateral, isoceles, scalene, or invalid

# Equilateral: All 3 sides are of equal length
# Isoceles: 2 sides are of equal length, while the 3rd is different
# Scalene: All 3 sides are of different length

# Rules:
# The sum of the lengths of the two shortest sides must be greater than
# the length of the longest side
# All sides must have lengths greater than 0


# Examples / Test 
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid


# Data Structures
# Array
# Hash


# Algorithm
# Put integers into an array called 'sides'
# Initiate a Hash with three keys: Longest, middle shortest
# Find the longest side in the array, make it the value of the longest key in the hash
# Ditto above for middle, and shortest
# Check if the lengths of middle and shortest added together are greater than the length of the longest side
# If it is not, return :invalid
# Check if all lengths are greater than 0, if not, return :invalid
# Check if all lengths are the same length, if so, return :equilateral
# Check if two of the lengths are the same, while the 3rd is different
    # If so return :isoceles
# Check if all three lengths are different, if so return :scalene



# Code

def triangle(num1, num2, num3)
  sides = [num1, num2, num3]
  side = {longest: nil, middle: nil, shortest: nil}
  side[:longest] = sides.max
  side[:shortest] = sides.min
  sides.delete_if {|element| element == sides.max}
  side[:middle] = side[:longest] if sides.empty?
  side[:middle] = sides.max if sides.size > 0
  case 
  when side[:middle] + side[:shortest] <= side[:longest]
    :invalid
  when side.values.any? {|num| num == 0}
    :invalid
  when num1 == num2 && num2 == num3
    :equilateral
  when num1 == num2 && num1 != num3
    :isoceles
  when num1 == num3 && num1 != num2
    :isoceles
  when num2 == num3 && num2 != num1
    :isoceles
  when num1 != num2 && num2 != num3 && num1 != num3
    :isoceles
  end
  side
end



# p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
# p triangle(3, 4, 5) #== :scalene
# p triangle(0, 3, 3) #== :invalid
# p triangle(3, 1, 1) #== :invalid
# p triangle(4, 3, 1) #== :invalid




