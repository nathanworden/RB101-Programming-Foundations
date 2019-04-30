def fibonacci_last(n)
  last_2 = [1, 1]
  3.upto(n) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end
  last_2.last
end


p fibonacci_last(15)        == 0 # (the 15th Fibonacci number is 610)
p fibonacci_last(20)        == 5 #(the 20th Fibonacci number is 6765)
p fibonacci_last(100)       == 5 #(the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   == 1 #(this is a 20899 digit number)
p fibonacci_last(1_000_007) == 3 #(this is a 208989 digit number)
p fibonacci_last(123456789) == 4 #


=begin
4
[1, 2] => 2
[2, 3] => 3

5
[3, 5] => 5

6
[5, 8] => 8

7
[8, 3] => 3
[8, 13] => 13

8
[3, 1] => 1
[13, 21] => 21

9
[1, 4] => 4
[21, 34] => 34

10
[4, 5] => 5
[34, 55] => 55

11
[5, 9] => 9
[55, 89] => 89

12
[9, 4] => 4
[89, 144] => 144

13
[4, 3] => 3
[144, 233] => 233

14
[3, 7] => 7
[233, 377] 377

15
[7, 10] => 10
[377, 610] => 610
=end










