# PEDAC
# Problem

# Write a method that returns a string with all the non-alphabetic characters replaced by spaces
# If one ore more non-alphabetic characters occur in a row, there should only be one space
# There should never be consecutive spaces in the output
# input: a string that consists of words and an assortment of non-alphabetic characters
# output: a string with no non-alphabetic characters (replace with spaces)

# Example / Test Cases
# cleanup("Gee Wilakers Batman! What the $%^&^  is going on??") == "Gee Wilakers Batman What the is going on ""
# cleanup("---what's my +*& line?") == ' what s my line '
# cleanup("       ") == " "
# cleanup("") == ""


# Data Structures
# strings


# Algorithm
# define a method called 'cleanup' which accepts an argument called 'string'
# call .gsub! on 'string' using Regex to substitute non alphabetic characters with spaces
# use a while loop to reduce ever space that is more than one, down to one space


# Code

def cleanup(string)
  string.gsub!(/[^a-zA-Z]/, ' ')
  while string.include?('  ')
    string.gsub!('  ', ' ')
  end
  string
end


# p cleanup("Gee Wilakers Batman! What the $%^&^  is going on??") == "Gee Wilakers Batman What the is going on "
# p cleanup("---what's my +*& line?") == ' what s my line '
# p cleanup("       ") == " "
# p cleanup("") == ""



# further exploration



def cleanup(string)
  alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
   array = string.chars.map! do |char|
      if alphabet.include?(char)
        char = char
      else
        char = ' '
      end
    end
    string = array.join
  while string.include?('  ')
    string.gsub!('  ', ' ')
  end
  string
end

p cleanup("Gee Wilakers Batman! What the $%^&^  is going on??") == "Gee Wilakers Batman What the is going on "
p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("       ") == " "
p cleanup("") == ""






