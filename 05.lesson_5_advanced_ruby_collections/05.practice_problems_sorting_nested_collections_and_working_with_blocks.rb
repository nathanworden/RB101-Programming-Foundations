# Practice Problems: Sorting, Nested Collections and Working with Blocks
# Over the course of the last three assignments we've gone into some depth regarding sorting, working with nested collection objects and also passing blocks to iterative methods in order to produce a certain output or return value. The best way to really gain a thorough understanding of these programming concepts is by putting them into practice.

# The purpose of these practice problems is to let you practice the specific concepts covered in the last three assignments; in some cases there may exist a Ruby method that lets you achieve the same result as passing a block to an iterative method but that isn't the objective here. Feel free to research those methods if you wish but you should try and solve the problems using the concepts and techniques outlined in the previous assignments.

# If any of the problems appear difficult at first, take the time to break them down and remember to focus on the structure of the collection object, the return value of blocks and methods and the side effects of any methods.

=begin

# Practice Problem 1
# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# In this example, p arr.sort gets evaluted first before the do block. 
# which means that the array is sorted based on its string values.
# since strings are evaluated character by character, '10' comes first 
# because it starts with a 1. The only other number that starts with
# a 1 is '11' so then the second character gets compared. '10's second
# character is 0 while '11's second character is 1. So '10' goes before '11'
# The return value is ["10", "11", "7", "8", "9"]

p arr.sort do |a, b|
  a.to_i <=> b.to_i
end

# In this example, we use parenthesis to show that we want to sort the 
# evaluated block and THEN print it out. This gives you 
# ["7", "8", "9", "10", "11"] 
p (arr.sort do |a,b|
    a.to_i <=> b.to_i
  end)

# Another way to do this is to do a one line block. When you do this
# the one line block {...} binds more tightly to arr.sort than
# p to arr.sort, and so the block is evaluated first and the p
# prints out ["7", "8", "9", "10", "11"]
p arr.sort {|a, b| a.to_i <=> b.to_i}

# Finally, the problem asked us to order the array of number strings
# by descending numeric value. Thus far we have only ordered them in
# acending numeric value. To get the order to decend, we put b before
# a in the comparison block:
p arr. sort {|a, b| b.to_i <=> a.to_i}



#Practice Problem 2

# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]



p (books.sort do |a, b|
   a[:published] <=> b[:published]
  end)

puts
puts

p (books.sort_by do |book|
  book[:published]
  end)




# Practice Problem 3
# For each of these collection objects demonstrate how you would reference the letter 'g'.

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
p arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
p arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
p arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
p hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
p hsh2[:third].keys[0]
#or
p hsh2[:third].key(0)




# Practice Problem 4

# For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.

arr1 = [1, [2, 3], 4]
arr1[1][1] = 4
p arr1

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4
p arr2

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4
p hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4
p hsh2


=end


# Practice Problem 5

# Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# figure out the total age of just the male members of the family.

males = munsters.select do |name, value|
    value["gender"] == "male"
  end

ages = males.map do |key, value|
         value["age"]
       end

p ages.reduce(:+)















