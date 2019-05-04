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


# Algorithm
# Validate it is a triange:
    # The sum of the lengths of the two shortest sides must be greater than the length of the longest side
        # Order the array in decending order. Add the last two numbers together. 
            # If they are equal to or less than the first number, return :invalid
    # Check and see if any side is 0. If so, return :invalid
# In the case that all three sides are equal length, return :equilateral
# In the case that two sides are of equal length, while the 3rd is different, return :isoceles
    # Compare the first and second elements. If these are the same, check and see if the third is different. If it is, return :isoceles
    # Compare the first and third  elements. If these are the same, check and see if the second element is different. If it is, return :isocles
    # Compare the second and third elements. If these are the same, check and see if the first element is different. If it is, reutrn :isoceles
# In the case that all 3 sides are of different length, return :scalene
    # Compare the first and second elements. If these are different, check the third element. If this is different from the first two, return :scalene
    


# Code 2nd Try. This one is the shortest

# def triangle(num1, num2, num3)
#   decending_sides = [num1, num2, num3].sort.reverse
#   return :invalid if decending_sides[0] >= decending_sides[1] + decending_sides[2]
#   return :equilateral if num1 == num2 && num2 == num3
#   return :scalene if decending_sides.chunk_while {|i, j| i == j}.to_a.size == 3
#   :isoceles
# end

# Code refactored to show off chunk_while

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort.reverse
  return :invalid if sides[0] >= sides[1] + sides[2]
  case sides.chunk_while {|i, j| i == j}.to_a.size
  when 1
    :equilateral
  when 2
    :isoceles
  when 3
    :scalene
  end
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isoceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
p triangle(4, 3, 1) == :invalid
p triangle(9, 9, 0) == :invalid
p triangle(0, 0, 0) == :invalid


# 1st Try

# def triangle(num1, num2, num3)
#   sides = [num1, num2, num3]
#   side = {longest: nil, middle: nil, shortest: nil}
#   side[:longest] = sides.max
#   side[:shortest] = sides.min
#   sides.delete_if {|element| element == sides.max}
#   side[:middle] = side[:longest] if sides.empty?
#   side[:middle] = sides.max if sides.size > 0
#   case 
#   when side[:middle] + side[:shortest] <= side[:longest]
#     :invalid
#   when side.values.any? {|num| num == 0}
#     :invalid
#   when num1 == num2 && num2 == num3
#     :equilateral
#   when num1 == num2 && num1 != num3
#     :isoceles
#   when num1 == num3 && num1 != num2
#     :isoceles
#   when num2 == num3 && num2 != num1
#     :isoceles
#   when num1 != num2 && num2 != num3 && num1 != num3
#     :isoceles
#   end
# end



# p triangle(3, 3, 3) #== :equilateral
# p triangle(3, 3, 1.5) #== :isosceles
# p triangle(3, 4, 5) #== :scalene
# p triangle(0, 3, 3) #== :invalid
# p triangle(3, 1, 1) #== :invalid
# p triangle(4, 3, 1) #== :invalid




