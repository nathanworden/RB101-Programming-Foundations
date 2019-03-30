# Valid Name

# Problem
# Rules
# 1. Both initials and words must be capitalized
# 2. Initials must end with a dot
# 3. A name must be either 2 or 3 words long (depending on whether a middle name exists)
# 4. If the name is 3 wors long, you can expand the first and middle name or expand the first name only. You cannot keep the firt name as an initial and expand the middle name only.
# 5. The last name must be a word (not an initial)

# Write a function that determines whether a name is valid or not. Return true if the name is valid, false otherwise

# Algorithm
# Split the string on whitespace
# Check to see if every word is capitalized
# If a word is only a single character, it is invalid, because it would have had to have a dot
# If the array of words has a length of one, return false
# If the array has a length of 3:
    # If the first first word is only two characters, the second word must be more than 2 characters
# The last word of the array must be longer than 2 characters


# Code

def valid_name(string)
  output = true
  arr = string.split
  output = false unless arr.all? {|word| word == word.capitalize}
  output = false unless arr.all? {|word| word.length > 1}
  output = false if arr.count == 1
  output = false if arr.count > 3
  arr.each do |word|
    if word.length > 2
      output = false if word.end_with?(".")
    end
  end
  if arr.length == 3 && arr[0].length == 2
    if arr[1].length > 2
      output = false
    end
  end
  output = false if arr.last.length <= 2
  output
end



# Examples / Test Cases

p valid_name("H. Wells") == true
p valid_name("H. G. Wells") == true
p valid_name("Herbert G. Wells") == true
p valid_name("Herbert George Wells") == true
p valid_name("Herbert") == false
p valid_name("Herbert W. G. Wells") == false
p valid_name("h. Wells") == false
p valid_name("herbert G. Wells") == false
p valid_name("H Wells") == false
p valid_name("Herb. Wells") == false
p valid_name("H. George Wells") == false
p valid_name("Herbert George W.") == false






