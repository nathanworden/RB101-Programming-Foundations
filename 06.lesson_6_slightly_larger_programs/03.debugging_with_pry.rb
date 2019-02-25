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
# whereami (shows you 5 lines of code above and 5 lines of code below where you are)
# wheream i 15 (shows you 15 lines of code above and 15 lines of code below where you are)

# pry-byebug
# extends pry with some additional commands:
# next
# step
# continue

# Similar gems exist such as pry-nav and pry-debugger
# The concept of stepping through and into code is not limited to 'pry' or Ruby

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



# require 'pry'

# a = 0
# b = 0

# loop do a += 1
#   binding.pry 
#   b += 1
#   break if b >= 3
# end




#*********************************

# require 'pry'

# def select_nums(arr)
#   new_arr = []
#   arr.each do |num|
#     binding.pry
#     new_arr << num if num.odd? && (num <= 15 || num % 3 == 0)
#   end
#   new_arr
# end

# p select_nums([1, 2, 5, 6, 9, 12, 15, 17, 19, 21]) == [1, 5, 9, 15, 21]
# p select_nums([6, 12, 18]) == []
# # p select_nums([3, 5, 7, 11, 15, 21]) == [3, 5, 7, 11, 15, 21]

 

#*********************************


require 'pry'
require 'pry-byebug'

def fizzbuzz(arr)
  arr.map do |num|
    binding.pry
    if num % 5 == 0 && num % 3 == 0
    'FizzBuzz'
    elsif num % 5 == 0
      'Buzz'
    elsif num % 3 == 0
      'Fizz'
    else
      num
    end
  end
end


p fizzbuzz([1, 3, 5, 6, 7, 8, 10, 3 ,15, 9]) == [1, 'Fizz', 'Buzz', 'Fizz', 7, 8, 'Buzz', 'Fizz', 'FizzBuzz', 'Fizz']
































