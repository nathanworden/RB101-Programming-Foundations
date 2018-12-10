# The General Approach for Problem Solving

# Small Code Challenge Problems
# - 20 - 45 minutes
# - typical solutions 10-40 Lines of Code
# - used extensively in interviews for a reason
#    - master of a language
#    - logic / reasoning
#    - communication
# - not a skill that you "acquire and file away", but need a lot of practice

# Understand the Problem
# - requirements are explicit
#   - take notes
#   - the odd words problem
# - requirements are not so explicit and need to be modeled
#   - requirements are shown with examples
#      - examples need to be described in computational words
#      - diamond of stars
#   - implicit knowledge needs to be captured
#      - convert to explict rules, incomputational language
#      - what centry is that
#   - identifying and defining imporant terms and concepts
#      - [queen attack (maybe an easy version?)](https://launchschoo.com/exercises/81d3afa6)
#      - same row; same colum; especially same diagnal
#   - ask questions to verify your understanding!

# Examples / Test Cases
# - Input / Output
# - Test cases serve two purposes:
#   - help you understand the problem
#   - allow you to verify your solution
# - Happy paths
#    - combination of requirements; the "obvious" result
# - Edge cases
#    - focus on input
#    - emptiness (nil/null, "", [], {})
#    - boundary conditions
#    - repetition / duplication
#    - upper case / lower case
#    - data types
# - Failures / Bad Input
#    - raise exceptions / report errors
#    - return a special value (nil/nul, 0, "", [], etc)
# - ask questions to verify your understanding!


###############################################################################

# Practice Problem #1
# Consider a character set consisting of letters, a space, and a point. Words consist
# of one or more, but at most 20 letters. An input text consists of one or more words
# separated from each other by one or more spaces and terminated by 0 or more spaces
# followed by a point. Input should be read from, and including, the first letter of
# the first word, up to and incluing the terminating point. The output text is to be
# produced such that successive words are separated by a single space with the last 
# word being termindated by a single point. Odd words are copied in reverse order
# while even words are merely echoed.

# For example, the input string
# "whats the matter with kansas."

# becomes
# "whats eht matter htiw kansas."

# Understanding the Problem:

#  - input:
#    - 1 - many words
#    - separated by: 1 - many spaces
#    - terminated by:
#        - 0-many spaces
#        - followed by a point
#    - characters: letter, space, point, up to 20 letters
#    - need to handle failure?
# - output
#    - words: have the odd words reversed
#    - odd means odd number words, based on 0 index
#    - separated by one space between words
#    - terminated: 0 space, followed by a dot

# Examples / Test Cases:

# reverse_odd_words("hello.")                 => "hello."
# reverse_odd_words("hello .")                => "hello."
# reverse_odd_words("hello world.")           => "hello dlrow."
# reverse_odd_words("hello world .")          => "hello dlrow."
# reverse_odd_words("hello  world  .")        => "hello dlrow."
# reverse_odd_words("hello  hello world.")    = "hello olleh world."  
# reverse_odd_words("")                       => ""


#################################################################################

# Practice Problem #2

# Write a function that takes an integer number as input, and prints out a diamond
# with the "*" character whose width is the number n.

# For example:
# Given n = 3

 *
***
 *

 # Given n = 5
  
  *
 ***
*****
 ***
  *

# Understanding the Problem

#  - input: number
#     - what happens when the number is 0?
#     - what happens when the number is an even number?
#  - output:
#     - returns a string with new line character "\n" delimeters
#     - prints on the screen


#################################################################################

# Practice Problem #3

# Write a program that, given a word, computes the scrabble score for that word.

# Letter Values

# letter                            Value
# A, E, I, O, U, L, N, R, S, T        1
# D, G                                2
# B, C, M, P                          3
# F, H, V, W, Y                       4
# k                                   5
# J, X                                8
# Q, Z                                10


# Undersatind the Problem

#  - Input: a string
#     - lower case / upper case?
# - Output: an integer (the scrabble score)
# - Rules:
#    - The score is the sum of th scores of each letter in the string
#    - The letter value table is used to loop up letter scores

# Examples: Test Cases
# score('a')        => 1
# score('cabbage')  => 14
# score('Cabbage')  => 14



#############################################################################

# Small Code Challenge Problems
#   - 20 - 45 minutes
#   - typical solutions: 10-40 LOC
#   - used extensively in interviews for a reason
#     - mastery on a language
#     - logic / reasoning
#     - communications
#   - not a skill that you "acquire and file away", but needs a lot of practice

# Understand the Problem
#   - requirements are explicit
#     - take notes
#     - the odd words problem
#   - requirements are not so explicit and need to be modeled
#     - examples need to be described in computational words
#     - diamond of stars
#   - implicit knowledge needs to be captured
#     - convert to explicit rules, in computational language
#     - what century is that
#   - identifying and defining important terms and concepts
#     - queen attack
#     - same row; same column; esp. same diagnal
#   - ask questions to verify your understanding!

# Examples / Test Cases
#   - Input / Output
#   - Test cases serve two purposes:
#     - help you understand the problem
#     - allow you to verify your solution
#   - happy paths
#     - combination of requirements; the "obvious" result
#   - Edge cases
#     - focus on input
#     - emptiness (nil/null, "", [], {})
#     - boundary conditions
#     - repetition / duplication
#     - data types
#   - Failures / Bad Input
#     - raise exceptions / report errors
#     - return a special value (nil/null, 0, "", [] etc)
#   - ask questions to verify your understanding!

# Data Structure
#   - input data
#   - rules/requirements as data
#     - hash / object

#   - string, array, hash/object, number
#     - string
#       - concact, strip, reverse, etc
#       - Regular Expression! split, replace, match...
#     - array
#       - need to walk through it (iteration)
#       - index
#       - abstractions!!
#         - map
#         - reduce
#         - select/filter
#         - all
#         - ...
#     - hash/object
#       - lookup table / dictionary
#       - partition data for more efficient access downstream
#       - digest
#     - number
#       - math operations
#       - number as string may have advantage over numbers
#   - compound data structures
#     - array of arrays
#     - hash with array/object values, etc

# Algorithm
#   - Algorithms have to be described in the language of chosen data structure!
#     - "then solve it" doesn't count
#   - Have to be really fluent with
#     - String / Regex
#     - Array
#       - Ruby: Enumerable
#       - JavaScript: Higher Order Functions
#     - Hash / Object
#       - Creation (default values)
#       - Access (default values)
#       - Iteration
#   - verify your algorithm with your examples / test cases

# Abstraction
#   - Very important, rely on language built in abstractions: String/Regex, Array, Hash/Object
#   - Avoid solving big problems!
#     - Always, always, break bigger problems into smaller problems
#     - Don't try to walk through a wall
#   - lay out the general steps of an algorithm, without having to go to details
#     - Try to solve a problem in 1-2 sentences!!!
#     - If you can't, raise your abstraction
#       - create helper methods/functions
#       - push detailed steps to methods/functions

# Interview Tips
#   - Communicative
#   - Getting to a working solution >> no solution
#   - De-risking
#     - Check your building blocks
#       - run code often
#       - debug locally
#   - Manage your energy







