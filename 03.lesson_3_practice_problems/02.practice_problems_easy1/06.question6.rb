# Question 6
# Starting with the string:

# famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.


# four = "Four score and "
 famous_words = "seven years ago..."
# p four + famous_words

# p "Four score and #{famous_words}"




# BOOK ANSWER

# "Four score and " + famous_words
# or

# famous_words.prepend("Four score and ")
# or

# "Four score and " << famous_words

p famous_words.prepend("Four score and ")