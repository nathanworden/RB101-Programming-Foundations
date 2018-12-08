# Ruby Style
# This is important enough that we're going to mention it again in the book. Make sure to follow the style rules listed here.

# The Ruby language has specific stylistic conventions that make reading and writing Ruby code easier for everyone. These are things you should adopt as quickly as possible, otherwise your code will stand out like a sore thumb.

# Your text editor's tab function should be set to 2 spaces and indenting should be set to use spaces. This is really important, and if you don't do this, it's a sure sign you're a new Ruby developer. Make sure to open your editor right now and figure out how to turn tabs to 2 spaces, and convert all existing tabs to 2 spaces.

# When you see the # sign at the beginning of a line, that means anything after it, on the same line, is a comment. Comments are used by programmers to leave notes for other programmers or themselves at a later point in time.

# When you define or initialize a method, variable, or file, you should always use snake_case formatting. snake_case formatting is created using all lower case letters and separating words with the underscore character.

# # Naming a file

# this_is_a_snake_cased_file.rb

# # Assigning a variable

# forty_two = 42

# # Defining a method

# def this_is_a_great_method
#   # do stuff
# end
# When you want to represent a value that will not change in your Ruby program, you define a constant variable, often referred to as a constant. In Ruby, constants are denoted with all uppercase letters.

# # Constant declaration

# FOUR = 'four'
# FIVE = 5
# When working with do...end blocks, prefer {} when the entire code expression fits on one line.

# # Multi-line vs single line

# [1, 2, 3].each do |i|
#   # do stuff
# end

# [1, 2, 3].each { |i| # do stuff }
# The last style convention you'll need to learn at this point is how to declare a class name. When naming your classes you will use CamelCase formatting. CamelCase uses no spaces and capitalizes every word.

# # Class naming

# class MyFirstClass
# end

# class MySecondClass
# end
# That about covers the most important style conventions to get started. If you'd like some more information about Ruby styling, check out the Ruby style guide.