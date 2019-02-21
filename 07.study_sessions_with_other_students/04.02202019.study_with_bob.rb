# You have a series of numbers as a string and you place
# a minus between any two numbers that are both odd.


# define a method called 'addminus' which accepts a string as a parameter
# Convert string to an array of characters
# initiate an 'output_array' to empty: []
# 
# iterate through each character
# convert character to an integer
# Determine whether the integer is odd
# if the integer is even, push it to the output_array as is
# if the integer is odd, push it with a minus sign to the output_array.
# Return output array.


def addminus(string)
  output_array = []
  char_array = string.chars
  char_array.each_with_index do |char, index|
    if char.to_i.odd? && char_array[index + 1].to_i.odd?
      output_array << char << "-"
    else
      output_array << char
    end
  end
  output_array.join
end




p addminus('44579788') == '445-7-9-788'
p addminus('') == ''
p addminus('1') == '1'
p addminus('11') == '1-1'

p addminus('45677654')


# Another way to do it?

def addminus(str)
  output_array = []
  last_is_odd = false
  str.chars.each do |char|
    output_array << (last_is_odd && char.to_i.odd? ? '-' : '') << char
    last_is_odd = char.to_i.odd?
  end
  output_array.join
end

p addminus('13394938283')
