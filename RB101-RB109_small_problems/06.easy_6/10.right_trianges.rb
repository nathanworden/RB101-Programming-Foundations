# PEDAC


# Problem
# Write a method that takes a positive integer, n, as an argument, and displays a right triangle
# whose sides each have n stars. The hupotenuse of the triangle (the diagonal sidein the images 
# below) should have one end at the lower-left of the triangle, and the other end at the 
# upper right

# Examples / Test Cases
# triangle(5)

#     *
#    **
#   ***
#  ****
# *****

# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

# Data Structure
# strings, arrays?


# Algorithm
# define a method called 'triangle' which accepts a positive integer 'n' as an argument
# initiate a counter at 1
# initiate a string called 'spaces' as ''
# initiate a string called 'stars' as ''
# while counter is less then or equal to n, do the following:
#     - (n-counter).times {spaces << " "}
#     - (counter).times {stars << "*"}
#     - puts spaces + stars
#     - counter += 1
# end


# Code

# def triangle(n)
#   counter = 1
#   while counter <= n
#     spaces = ''
#     stars = ''
#     (n-counter).times {spaces << " "}
#     (counter).times {stars << "*"}
#     puts spaces + stars
#     counter += 1
#   end
# end



# def triangle(n)
#   start = 1
#   loop do
#     puts ' ' * n + "*" * start
#     start += 1
#     n -= 1
#     break if n < 0
#   end
# end


# def triangle(n)
#   start = 1
#   spaces = n - 1
#   (n).times do
#     puts " " * spaces + "*" * start
#     spaces -= 1
#     start += 1
#   end
# end

# Further Exploration

# def triangle(n)
#   start = 1
#   spaces = n - 1
#   (n).times do
#     puts " " * spaces + "*" * start 
#     spaces -= 1
#     start += 1
#   end
# end


# def triangle(n)
#   1.upto(n) { |count| puts ("*" * count).rjust(n, '_' )}
# end

def triangle(n)
  (1..n).each {|stars| puts " " * (n - stars) + "*" * stars}
end



#triangle(5)
#triangle(9)
#triangles(5)
# triangle(4)
# triangle(5)
triangle(10)



# def diamond_w_background(n)
#   0.upto(n) { |count| puts ("*" * count).rjust(n + 1, '-' ) + "*" + ("*" * count).ljust(n + 1, '-')}
#   puts "*" * n + "***" + "*" * n
#   0.upto(n) { |count| puts ("-" * count + "-").ljust(n + 1, '*') + "*" + ("-" * count + "-").rjust(n + 1 , '*')}
# end

# def diamond(n)
#   0.upto(n) { |count| puts ("*" * count).rjust(n + 1, ' ' ) + "*" + ("*" * count).ljust(n + 1, ' ')}
#   puts "*" * n + "***" + "*" * n
#   0.upto(n) { |count| puts (" " * count + " ").ljust(n + 1, '*') + "*" + (" " * count + " ").rjust(n + 1 , '*')}
# end



# diamond(10)
# diamond_w_background(10)


