# Mutation
# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2



# array1 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']
# array2 = []

# array1.each { |value| array2 << value }

# #now array2 looks like this:
# array2 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']

# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# #now array1 looks like this:
# array1 = ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']





# array2 holds the same  elements that array1 had, so when the elements in 
# array1 are changed, they are changed in array2:

# puts array2 
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo


# Got this one wrong.

puts 'yikes yikes'















# Mutation
# What will the following code print, and why? Don't run the code until you have tried to answer.

# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# array2 = []
# array1.each { |value| array2 << value }
# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# puts array2
# Hide Solution & Discussion
# Solution
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo
# Discussion
# Wait a minute! We changed Curly to CURLY, Shemp to SHEMP, and Chico to CHICO in array1. How'd those changes end up in array2 as well?

# The answer lies in the fact that the first each loop simply copies a bunch of references from array1 to array2. When that first loop completes, both arrays not only contain the same values, they contain the same String objects. If you modify one of those Strings, that modification will show up in both Arrays.

# If this answer surprises you, reread the section on Pass by Reference vs Pass by Value in Lesson 2 of Programming Foundations. To be succesful with ruby, you must understand how values are passed around, and what mutation means for those values.

# Further Exploration
# How can this feature of ruby get you in trouble? How can you avoid it?

# For even more information on this topic, see these Blog posts:

# Variable References and Mutability of Ruby Objects
# Mutating and Non-Mutating Methods in Ruby
# Object Passing in Ruby - Pass by Reference or Pass by Value



