# PEDAC


# Problem
# Create a method that takes 2 arguments, an array and a hash
# The array will contain 2 or more elements, when combined will produce a person's name.
# Hash will contain two keys, :title and :occupation, and the appropriate values
# Your method should return a greeting that uses the person's full name, and mentions the person's title

# Examples / Test Cases
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

# Data Structures
# array, hash, string

# Algorithm
# define a method which accepts two arguments: 'array' and 'hash'
# Join the array with .join(' ') and save this in a variable called 'name'
# puts out a sentence with interpolation

# Code

#  def greetings(array, hash)
#   puts "Hello, #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
# end

# greetings(['Nathan', 'M', 'Worden'], {title: 'Senior', occupation: 'Software Developer'})



# further exploration

def greetings(array, hash)
  name = array.join(' ')
  title = hash.values.join(' ')
  puts "Hello, #{name}! Nice to have a #{title} around."
end


greetings(['Nathan', 'M', 'Worden'], {title: 'Senior', occupation: 'Software Developer'})