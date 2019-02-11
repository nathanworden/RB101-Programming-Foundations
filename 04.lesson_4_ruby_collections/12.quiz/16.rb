Question 16 1 / 1 Points Correct
Carefully examine the following code example.

pets = ['cat', 'parrot', 'dog', 'fish']
pets.map do |pet|
  pet.size == 3
end
Based on your observations of the code example, select all statements below which are true.

Your Answer
A
The method called on the pets array considers the return value of the block.

B
The method called on the pets array will return the original array.

C
The method called on the pets array will return a new array.

D
The method called on the pets array will return only the items from the array which meet the criteria set in the block.

Discussion
Correct:

A & C. The return value of the block, which will be true or false, is considered and in fact is used to populate a new array that is returned by the call to map.

[true, false, true, false]
Incorrect:

B. CallingArray#map with a block returns a new Array.

D. This would be a description of selection but map performs transformation, in this case replacing each array item with a boolean.

Review Topics:

Methods
Array#map method definition