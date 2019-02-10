Question 7 0 / 1 Points Incorrect
Read the below statements regarding each and identify all the statements which are correct.

Your Answer
A
If you call each with a block on an array that contains seven elements, the block will always execute seven times.

B
When each is called with a block on a hash, it returns an array.

C
When each is called with a block on an array, it returns the array object that it was called on.

D
When called with a block, the Array#each method considers the truthiness of the block's return value.

Discussion
Correct:

C. When called with a block, the Array#each method returns the array itself. Without a block a returns an Enumerator.

Incorrect:

A. While the block will typically execute once for each element, you can use break or an explicit return to prematurely terminate iterations, so you can't count on the block running exactly 7 times in all cases.

B. The Hash#each method returns the hash that it was called on.

D. The Array#each method ignores the return value of the block.

Review Topics:

Methods
The Array#each method
The Hash#each method