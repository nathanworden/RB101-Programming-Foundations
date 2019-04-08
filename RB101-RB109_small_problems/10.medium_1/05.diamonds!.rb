#PEDAC

# Problem
# Display a 4-pinted diamond in an n x n grid.
# n will always be an odd integer

# Exampels
# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# Data Structure
# Integer, String

# Algorithm
# Create an array of odd numbers from n to 1 and then back up to n
# use integer division to divide the first element of the array by 2. 
# The result is the number of spaces you have before the * on line 1
# Build the first line with the number of spaces, then a star, then that number of spaces
# Iterate through the array. Each element is divided by 2 and that is the number of sapces you have before * on line 1


def diamond(integer)
  spaces = (1..integer).step(2).to_a
  space_line = spaces.reverse
  spaces.shift
  space_line += spaces
  space_line.map! {|num| num / 2}

  stars = (1..integer).step(2).to_a
  star_line = stars.reverse
  star_line.shift
  star_line = stars + star_line

  counter = 0
  star_line.each do |element|
    line = ("*" * element)
    spaces = line.length + space_line[counter]
    full_line = line.rjust(spaces) + (" " * space_line[counter])
    puts full_line
    counter += 1
  end
end


diamond(9)


diamond(15)

diamond(99)

