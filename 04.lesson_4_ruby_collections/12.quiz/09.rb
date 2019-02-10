Question 9 1 / 1 Points Correct
Read the below statements regarding map and identify all the statements which are correct.

Your Answer
A
If map was called with a block that returned nil on every iteration, it would return an empty array.

B
If map was called with a block on an array containing five items, the return value would be an array containing five items.

C
Enumerable#map and Enumerable#collect perform the same function.

D
When map is called with a block on a hash it returns a new hash.

Discussion
Correct:

B & C.

Incorrect:

A. The return value in this situation would be an array containing nils; one nil for each item in the original array.

D. When map is called with a block on a hash, the return value of the method is an array.

Review Topics:

Methods
The Enumerable#map method