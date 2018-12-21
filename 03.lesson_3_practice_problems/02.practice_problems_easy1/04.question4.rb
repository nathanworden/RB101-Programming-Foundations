# Question 4
# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

# numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
p numbers
# MY ANSWER:
# This will delete the element at position 1, which will be the nunber '2'
# This will leave the array with: numbers = [1, 3, 4, 5]


numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
p numbers
# This will delete all occurances of the number 1 in the array.
# In this case, that will leave the array as: numbers [2, 3, 4, 5]



# BOOK SOLUTION

# numbers.delete_at(1) # numbers is now [1, 3, 4, 5]
# (note that the array is operated on directly and the return value of the call is the removed item 2)

# numbers.delete(1) # numbers is now [2, 3, 4, 5]
# (note that the array is operated on directly and the return value of the call is the removed item 1)

# Another thing to notice is that while both of these methods operate on the contents of the referenced array and modify it in place (rather than just returning a modified version of the array) these methods do NOT have the usual ! at the end of the method name for "modify in place" method names.