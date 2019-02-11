Question 15 1 / 1 Points Correct
Within the code below, identify the method represented by some_method:

{a: 1, b: 2, c: 3, d: 4, e: 5}.some_method do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end
# => {:a => 1, :b => 2, :c => 3, :d => 4, :e => 5}
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

A. The Hash#each method returns the calling object, i.e. the hash that each was called on.

Incorrect:

B. select would return an empty hash, since the call to puts returns nil and this is the last expression evaluated in the block.

C. map would return an array of nils; as with B, puts is the last expression evaluated in the block, and map returns an array.

D. The missing method is each.

Review Topics:

Methods