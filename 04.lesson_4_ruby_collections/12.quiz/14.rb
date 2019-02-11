Question 14 1 / 1 Points Correct
Within the code below, identify the method represented by some_method:

['green', 'blue', 'red'].some_method do |word|
  puts word
  word.upcase
end
# => ['GREEN', 'BLUE', 'RED']
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

C. map returns a new array, with each element determined by the return value of the block, in this case an upper case version of each string from the original array.

Incorrect:

A. each would return the original, unchanged, array.

B. select would return a new array, containing all of the (lowercased) strings from the original array.

D. The missing method is map.

Review Topics:

Methods