# Question 2
# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it?
# put ! before something, like !user_name
# put ! after something, like words.uniq!
# put ? before something
# put ? after something
# put !! before something, like !!user_name


# My Answer

# ! denotes 'the opposite of'
# ? deontes 'is this present? / is this true? What is the truthines of this object?'


# what is != and where should you use it?     => 'is not equivalent to.' Use it in comparisons.
# put ! before something, like !user_name     => Not sure. An error?
# put ! after something, like words.uniq!     => Sometimes this will make the method mutate the caller and act in a destructive manner
# put ? before something                      => Not sure. An error?
# put ? after something                       => Ternary operator. It asks if the statement before it is true. If the statement is true, then the next statement executes. If the statement is false, then the statement after the ':'' executes
# put !! before something, like !!user_name   => I have no idea.



# BOOK ANSWER

# Just to clarify, if you see ! or ? at the end of the method, it's actually part of
# the method name, and not Ruby syntax. Therefore, you really don't know what the 
# method is doing, even if it ends in those characters -- it depends on the method
# implementation. The other uses are actual Ruby syntax:

# != means "not equals"
# ? : is the ternary operator for if..else
# !!<some object> is used to turn any object into their boolean equivalent (try it in irb)
# !<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but the opposite
# 