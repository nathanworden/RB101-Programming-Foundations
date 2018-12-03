# Good vs Bad Questions
# There are never dumb questions, and we want our program to be a safe place to ask all sorts of questions that come up. However, some questions are better than others.

# Bad Questions
# Here is an example of a bad question:

# Can I access a constant that's defined outside a method?

# The reason this question is bad is because it's easily testable. The word "bad" may be a little strong, but we want to encourage you to try things out yourself. Create a new .rb file and give it a shot:

# NUMBERS = [1, 2, 3]

# def test
#   puts NUMBERS.inspect
# end

# test
# Good Questions
# A better question would be to observe this behavior, and note how it differs from local variable scope rules, and ask why. Example of a good question:

# Why is it that a constant is accessible from a method, but a local variable isn't? Here's an example:

# NUMBERS = [1, 2, 3]
# arr = [1, 2, 3]

# def test
#  puts NUMBERS.inspect
#  puts arr.inspect
# end

# test

# # => [1, 2, 3]
# # => NameError: undefined local variable or method `arr'
# This question shows you played around with the code and observed a subtle difference in behavior. These are the types of questions we want to encourage you to ask. Most of the isolated "how does it work in Ruby" type of questions can be answered by experimenting in irb or by playing around with the code in the editor. The trick to remembering all the syntax rules in Ruby is to not remember them -- you need to be able to refresh your memory by experimenting with code. This is a habit that you should develop early.

# If you do ask a "bad" question, we may suggest that you try it out in irb or your editor. Don't be offended by responses like these; they're meant to help you in the long run.

# Side note: the reason that the test method can access the constant but not the local variable is because local variables and constants have different scoping rules; we'll talk about that more in the later lessons.