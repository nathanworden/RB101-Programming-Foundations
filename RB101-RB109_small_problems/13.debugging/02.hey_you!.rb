def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# String#upcase! is a destructive method, so why does this code print HEY you 
# instead of HEY YOU? Modify the code so that it produces the expected output.



# My Answer
# On line 2 above, the String#chars method is called on the local variable 'name'.
# String#chars is not a destructive method. String#chars will return an array
# where each letter of the string it is called on will be an element of an array.
# Anything that happens to this new array does not affect the variable 'name'.
# So, while Array#each is mutating the array created by String#chars, this is not
# affecting the 'name' variable and it also isn't being stored anywhere.

# To fix this you can update the 'name' variable to be the joined letters of the 
# mutated array created by Array#chars

def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'