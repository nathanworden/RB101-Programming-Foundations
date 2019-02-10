Question 6 1 / 1 Points Correct
This method takes a string in standard sentence case and should return it in upper snake case:

sentence = 'The sky was blue'
upper_snake(sentence) # => 'THE_SKY_WAS_BLUE'
but it contains an error.

Identify the line of code that you need to fix in order to make this code work properly.

def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    current_word += 1
    break if current_word == words.size

    words[current_word].upcase!
  end

  words.join('_')
end
Your Answer
A
break if current_word == words.size
B
current_word += 1
C
words = str.split
D
words.join('_')
Discussion
Correct:

B. The problem here is not the line itself but the positioning of the line. Because we increment our current_word counter before the line that calls upcase!, the first word in the string does not get upcased (or if there is only a single word we break out of the loop straight away). This can be fixed by moving the line current_word += 1 to the bottom of the loop.

Incorrect:

A, C, & D.

Review Topics:

Looping
Selection and Transformation