Question 17 1 / 1 Points Correct
Carefully examine the following code example.

flavors = ['chocolate', 'strawberry', 'mint', 'vanilla']
flavors.reject { |flavor| puts flavor }
Based on your observations of the code example, select all statements below which are true.

Your Answer
A
The method called on the flavors array will return an empty array.

B
The method called on the flavors array ignores the return value of the block.

C
The method called on the flavors array returns a reference to the original array.

D
The method called on the flavors array considers only the truthiness of the block's return value.

Discussion
Correct:

D. Like Array#select, Array#reject is only interested in the truthiness of the block's return value, though in the case of reject it returns the items for which the block is not true, or in other words is falsy.

Incorrect:

A, B, & C. Array#reject does consider the return value of the block; since in this case the return value will be nil in each case, this will always be evaluated as falsy and so the array that is returned contains all of the flavor stings. The array returned by reject it is a new array however, and not the original flavors array.

Review Topics:

Methods
Array#reject method definition