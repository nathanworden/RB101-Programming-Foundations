Question 18 1 / 1 Points Correct
Identify all of the code implementations that correctly meet the following set of requirements.

Given an array numbers which contains both odd and even integers; create two new arrays, odd_numbers which contains the odd integers from the original array and even_numbers which contains the even integers.

Your Answer
A
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]

odd_numbers = numbers.select do |number|
                number.odd?
              end

even_numbers = numbers.select do |number|
                number.even?
              end

B
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers = []
even_numbers = []

numbers.each do |number|
  if number.even?
    even_numbers << number
  elsif number.odd?
    odd_numbers << number
  end
end
C
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers = []
even_numbers = []

for number in numbers
  next if number.odd?
  even_numbers << number
end

for number in numbers
  next unless number.odd?
  odd_numbers << number
end
D
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers, even_numbers = numbers.partition do |number|
                              number.even?
                            end
Discussion
Correct:

A, B, & C. These all implement the requirements correctly.

Incorrect:

D. This gets the two new arrays the wrong way around in the parallel assignment. This is because Enumerable#partition returns an array containing two sub-arrays, the first of which contains the elements for which the block evaluates to true. Since the condition in this case evaluates whether each number is even, we should assign even_numbers to the first sub-array and odd_numbers to the second.

Review Topics:

Looping
Methods
More Methods
Enumerable#partition method definition