Question 13 1 / 1 Points Correct
Within the code below, identify the method represented by some_method:

[1, 2, 3, 4, 5].some_method do |num|
  num + 1
end
# => []
Your Answer
A
each

B
select

C
map

D
None of the above

Discussion
Correct:

D. None of each, select or map would return an empty array with the given block. If reject was used here then an empty array would be returned.

Incorrect:

A. each would return the original array.

B. select would return a new array containing all the items from the original array [1, 2, 3, 4, 5].

C. map would return an array with each integer incremented by 1 [2, 3, 4, 5, 6].

Review Topics:

Methods