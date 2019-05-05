# PEDAC

# Problem
# Input: 3 integers denoting the degrees of angles in a triange
# Output: a symbol:
    # :right - One angle of the triange is a right angle (90 degrees)
    # :acute - All 3 angles of the triange are less than 90 degrees
    # :obtuse - One angle is greater than 90 degrees
    # :invalid - The sum of the angles is not 180 degrees, or one or more of the angles are not greater than 0.

# Examples, Test Cases

# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid
# triangles(0, 0, 180) == :invalid
# triangle(91, 2, 87) == :obtuse
# triangle(90, 91, 5) == :invalid

# Data Structure
# Array

# Algortihm
# Add the three parameters together. Return :invalid if they do not equal 180
# Check if any of the parameters are 0. Return :invalid if any of them are 0.
# If any of the angles are 90, Return :right
# If all three angles are less than 90, return :acute
# If one of the angle is greater than 90, return :obtuse

# Code

# def triangle(angle1, angle2, angle3)
#   angles = [angle1, angle2, angle3]
#   return :invalid if angle1 + angle2 + angle3 != 180
#   return :invalid if angles.any? {|angle| angle == 0}
#   return :right if angles.any? {|angle| angle == 90}
#   return :acute if angles.all? {|angle| angle < 90}
#   return :obtuse if angles.any? {|angle| angle > 90}
# 


# Book Answer:
def triabgle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case 
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.includ?(90)
    :right
  when angles.all? {|angle| angle < 90}
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
p triangle(0, 0, 180) == :invalid
p triangle(91, 2, 87) == :obtuse
p triangle(90, 91, 5) == :invalid




