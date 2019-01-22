# PEDAC


# Problem
#  - Write a method that will take a short line of text, and print it within a box.

# Example / Test Cases
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# Data Structure
# String

# Algorithm
# define a method called 'print_in_box' which accepts an argument called 'string'
#  - print out a top line which is the length of the string
#  - print out a mostly empty line with a | at either end. This is also the length of your string
#  - print out your string
#  - Do the first two steps in reverse order

# Code

# def print_in_box(string)
#   horizontal_dash = ''
#   horizontal_space = ''
#   (string.length + 2).times { horizontal_dash << '-' }
#   (string.length + 2).times {horizontal_space << ' '}
#   puts "+" + horizontal_dash + "+"
#   puts "|" + horizontal_space + "|"
#   puts "| " + string + " |"
#   puts "|" + horizontal_space + "|"
#   puts "+" + horizontal_dash + "+"
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')
# print_in_box("This is hard, but I'm getting better at it.")
# print_in_box('What happens when this string is super super super super super super super super super super super super super super super long?')



# Book Answer

# def print_in_box(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end


# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')
# print_in_box("This is hard, but I'm getting better at it.")
# print_in_box('What happens when this string is super super super super super super super super super super super super super super super long?')



# Further Exploration #1

# Modify this method so it will truncate the message if it will be too wide to fit 
# inside a standard terminal window (80 columns, including the sides of the box). 
# For a real challenge, try word wrapping very long messages so they appear on multiple 
# lines, but still within a box.



# def print_in_box(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"

#   if message.size > 80
#     message = message.slice(0..76) + '...'
#     return print_in_box(message)
#   end

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end


# print_in_box('To bodly go really really really really really really really really really really really really really really really far out there!')




# Further Exploration #2

MAXIMUM_LENGTH = 76

def print_multiple_lines(str)
  line = ''
  lines = []
  str.split.each do |word|
    if line.size + word.size > MAXIMUM_LENGTH
      line.strip
      lines << line
      line = ''
    end
    line += (word + ' ')
  end
  line.strip
  lines << line
  max_length = lines.map(&:size).max
  puts "+#{'-' * (max_length + 2)}+"
  puts "|#{' ' * (max_length + 2)}|"
  lines.each {|text| puts "| #{text}#{' ' * (max_length - text.size)} |"}
  puts "|#{' ' * (max_length + 2)}|"
  puts "+#{'-' * (max_length + 2)}+"
end


print_multiple_lines("In forty years, Earth's population will reach ten billion. Can our world support that? What kind of world will it be? Those answering these questions generally fall into two deeply divided groups--Wizards and Prophets, as Charles Mann calls them in this balanced, authoritative, nonpolemical new book. The Prophets, he explains, follow William Vogt, a founding environmentalist who believed that in using more than our planet has to give, our prosperity will lead us to ruin. Cut back! was his mantra. Otherwise everyone will lose! The Wizards are the heirs of Norman Borlaug, whose research, in effect, wrangled the world in service to our species to produce modern high-yield crops that then saved millions from starvation. Innovate! was Borlaug's cry. Only in that way can everyone win! Mann delves into these diverging viewpoints to assess the four great challenges humanity faces--food, water, energy, climate change--grounding each in historical context and weighing the options for the future. With our civilization on the line, the author's insightful analysis is an essential addition to the urgent conversation about how our children will fare on an increasingly crowded Earth.")
























