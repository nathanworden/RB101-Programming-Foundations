# Question 12 1 / 1 Points Correct
# Within the code below, identify the method represented by some_method:

# ['a', 'b', 'c'].some_method do |item|
#   puts item
# end
# # => []
# Your Answer
# A
# each

# B
# select

# C
# map

# D
# None of the above

# Discussion
# Correct:

# B. puts item returns nil which is evaluated as falsey, therefore using select would return an empty array.

# Incorrect:

# A. each would return the original array.

# C. map would return an array of nils [nil, nil, nil].

# D. The missing method is select.

# Review Topics:

# Methods