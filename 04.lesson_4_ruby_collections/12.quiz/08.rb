Question 8 1 / 1 Points Correct
Read the below statements regarding select and identify all the statements which are correct.

Your Answer
A
If select was called with a block that returned a falsey value on every iteration, select would return nil

B
When select is called with a block, it evaluates the truthiness of the block's return value.

C
If select was called on an array with a block that returned a truthy value on each iteration, the original array would be returned.

D
When select is called with a block on a hash it returns a new hash.

Discussion
Correct:

B & D.

Incorrect:

A. If the block's return value is evaluated as false on every iteration, the return value would be an empty collection of the type select was called on.

C. The return value in this case would be a new array containing all of the items from the original array.

Review Topics:

Methods
The Enumerable#select method
The Hash#select method