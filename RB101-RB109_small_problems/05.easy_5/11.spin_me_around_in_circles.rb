# Spin Me Around In Circles
# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

# def spin_me(str)
#   str.split.each do |word|
#     word.reverse!
#   end.join(" ")
# end

# spin_me("hello world") # "olleh dlrow"






# Initial Guess:

# The returned string will be a different object as the one passed.
# This is because when .split is called on 'str' it is turned into an array and that is a 
# different object.


