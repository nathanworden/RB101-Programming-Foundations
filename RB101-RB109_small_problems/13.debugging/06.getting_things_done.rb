# def move(n, from_array, to_array)
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end

# # Example

# todo = ['study', 'walk the dog', 'coffee with Tom']
# done = ['apply sunscreen', 'go to the beach']

# move(4, todo, done)

# p todo # should be: ['coffee with Tom']
# p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']


# We wrote a method for moving a given number of elements from one array to another.
#  We decide to test it on our todo list, but invoking move on line 11 results in a
#   SystemStackError. What does this error mean and why does it happen?


# My Answer
# move is a recursive method because it calls itself. However, it doesn't have
# An end condition, so it repeatedly calls itself forever.

# To correct, we need condition to end the recursion, which you can accomplish
# by adding a 'return if n == 0' on the first line of the 'move' method



def move(n, from_array, to_array)
  return if n == 0 || from_array.empty?
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should b