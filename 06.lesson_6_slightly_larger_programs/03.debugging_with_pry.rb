# Earlier in the course we introduced some debugging techniques, including the basics of using pry. As programs get larger and grow in complexity, the likelihood of bugs occuring in your code increases. When dealing with larger programs it is even more important to know how to identify and eliminate bugs when they occur. Before continuing with this lesson we recommend that you review this assignment.

# We recommend that you watch this optional video which takes a more in-depth look at debugging with pry and also introduces using pry as a debugger through the use of pry-byebug. Using pry-byebug dramatically increases pry's ability to help you pinpoint and fix bugs.

# Note: If possible, watch this video in full-screen mode to better read the provided code examples.



# require "pry"

# counter = 0

# loop do
#   counter += 1
#   binding.pry
#   break if counter == 5
# end



# Using pry
# change scope with cd
# learn about context with ls
# Call methods directly within the context
# Access documentation with show-doc


# cd .. (go back to the main scope)
# cd - (switch between the last two scopes)
# cd / (switch back to the top level scope)


# Invoking pry at runtime
# Using binding.pry
# a binding is something that contains references to any variable that were in scope
# at the point where it was created.


# pry interrupts program execution and pries open the binding so that we can
# have a look around





# require "pry"
# a = 1
# b = 2
# binding.pry
# c = 3


#*********************************

# require 'pry'

# def my_method(num)
#   a = 1
#   binding.pry
#   b = 2
# end

# c = 3

# my_method(c)


#*********************************

# require 'pry'

# def double_num(num)
#   num * 2
# end

# arr = [1, 2, 3].map do |num|
#   double_num(num)
# end

# p arr


#*********************************



require 'pry'

a = 0
b = 0

loop do a += 1
  binding.pry 
  b += 1
  break if b >= 3
end




























