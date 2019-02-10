# # Question 1 1 / 1 Points Correct
# # What happens if we try to initialize a Hash that contains duplicate keys?

# # Example:

# # hsh = {a: 100, b: 200, c: 300, a: 400}
# # Try to answer without simply running the above code.

# # Your Answer
# # A
# # The hash is created containing all of the key-value pairs but a warning is raised.

# # B
# # An exception is raised and the hash is not created.

# # C
# # Both of the key value pairs for the duplicate keys are removed from the hash.

# # D
# # The value for the second occurrence of the duplicate key overwrites the value for the first occurrence.

# Discussion
# Correct:

# D. The hash is created and a warning is raised but the hash does not contain all of the key-value pairs; the first occurrence is overwritten by the second.

# irb(main):001:0> hsh = {a: 100, b: 200, c: 300, a: 400}
# (irb):1: warning: key :a is duplicated and overwritten on line 1
# => {:a=>400, :b=>200, :c=>300}
# Incorrect:

# A, B, & C.

# Review Topics:

# Collections Basics