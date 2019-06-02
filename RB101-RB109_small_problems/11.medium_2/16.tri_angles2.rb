# PEDAC

# Problem
# Input: 3 integers (denoting angles)
# Output: a symbol (:acute, :right, :obtuse, or :invalid)

# Write a method that takes the 3 angles of a triangle as arguments, and returns
# a symbol.

# Rules:
# The sum of the angles must be exactly 180 degrees
# All angles must be greater than 0

# Data Structures
# Array

# Algorithm
# Create an array called 'angles' with angle1, angle1, and angle3 as elements
# return :invalid if the sum 'angles' does not equal 180
# return :invalide if any of the angles are less than or equal to 0
# return :right if any of the angles are equivalent to 90
# return :acute if all angles are less than 90
# return :obtuse if any of the angles are greater than 90

# Code

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid if angles.sum != 180
  return :invalid if angles.any? {|angle| angle <= 0}
  return :right if angles.any? {|angle| angle == 90}
  return :acute if angles.all? {|angle| angle < 90}
  return :obtuse if angles.any? {|angle| angle > 90}
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid