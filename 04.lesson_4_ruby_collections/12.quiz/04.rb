Questions 4-6
During a pairing session you are working on some code to meet the following requirements:

Implement a method that takes two arguments:

a sentence string consisting of one or more words
a value which represents a particular case type from either snake case, camel case or upper snake case
The method should return the given string transformed into the appropriate case.

Example:

sentence = 'The sky was blue'
change_case(sentence, :snake) # => 'the_sky_was_blue'
You decide to write a 'main' method which takes the two arguments and then, depending on the value of the case parameter, calls one of three other methods:

def change_case(sentence, new_case)
  case new_case
  when :snake
    snake(sentence)
  when :camel
    camel(sentence)
  when :upper_snake
    upper_snake(sentence)
  else
    puts 'Invalid case type'
  end
end
Your pair works on the three individual case methods, but when you review their code you spot some issues. Identify the line of code causing the issue in each of the methods below; feel free to run the code in order to answer these questions.




  Question 4 1 / 1 Points Correct
This method takes a string in standard sentence case and should return it in snake case:

sentence = 'The sky was blue'
snake(sentence) # => 'the_sky_was_blue'
but it contains an error.

Identify the line of code that is causing the error.

def snake(str)
  words = str.split
  current_word = 1

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end
Your Answer
A
current_word = 1
B
words[current_word].downcase!
C
break if current_word >= words.size
D
words.join('_')
Discussion
Correct:

A. The problem is that by setting the value of current_word to 1, iteration will begin at the second item in the array. If the first word is not already lowercase then it will not be downcased; if there is only one word in the string then an exception will be raised.

Incorrect:

B, C, & D.

Review Topics:

Looping
Selection and Transformation