Question 5 1 / 1 Points Correct
This method takes a string in standard sentence case and should return it in camel case:

sentence = 'The sky was blue'
camel(sentence) # => 'TheSkyWasBlue'
but it contains an error.

Identify the line of code that is causing the error.

def camel(str)
  words = str.split(' ')
  counter = 0

  while counter > words.size
    words[counter] = words[counter].capitalize

    counter = counter + 1
  end

  words.join
end
Your Answer
A
words = str.split(' ')
B
while counter > words.size
C
words[counter] = words[counter].capitalize
D
counter = counter + 1
Discussion
Correct:

B. The problem is the conditional in the while loop. This should use < for comparison instead of >. As it stands, the loop never gets executed because counter is assigned to 0 and so is never greater than words.size.

Incorrect:

A, C, & D.

Review Topics:

Ruby Book: Flow Control
Looping
Selection and Transformation