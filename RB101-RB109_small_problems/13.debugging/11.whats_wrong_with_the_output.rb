# What's wrong with the output?
# Josh wants to print an array of numeric strings in reverse numerical order. 
# However, the output is wrong. Without removing any code, help Josh get the 
# expected output.

# arr = ["9", "8", "7", "10", "11"]

arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 



# Its the binding!

# p arr.sort is binding more tightly than the block for sort.

# If you open up irb and don't use p to ouput the result, you will
# see that the return value of:

# arr = ["9", "8", "7", "10", "11"]
# arr.sort do |x, y|
#   y.to_i <=> x.to_i
# end

# is: ["11", "10", "9", "8", "7"]

# BUT when you add the p back in, the return value of:

# arr = ["9", "8", "7", "10", "11"]
# p arr.sort do |x, y|
#     y.to_i <=> x.to_i
#   end

# is: ["10", "11", "7", "8", "9"]

# If you just run arr.sort, you get ["10", "11", "7", "8", "9"],
# so p arr.sort is what is being printed out because p is binding
# more tightly to arr.sort than the block after sort is.

# You can solve this by giving parenthesis to arr.sort, like this:

arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)


