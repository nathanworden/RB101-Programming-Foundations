# PEDAC


# Problem
# Write a method that takes a String of digits, and returns the appropriate number as an integer
# You may not use .to_i or Integer()
# implicit requirements:
# - We are going to need to know the numbers of characters in the String

# Examples / Test Cases
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# Data Strucutres
#  - strings
#  - integers
#  - arrays

# Algorithms
# - Assign a variable called 'string_nums' to the input value
# - call .chars on the String to get an array of the string number elements
#    - call this array 'string_nums'
#    - set string_nums equal to string_nums.chars
# - create an array with factors of 10 in it as many times as there are characters in 'string_nums'
#     - initialize an empty array called 'factors_of_10'
#     - call 0.upto on '(string_nums.size - 1)', pushing 10 to the power of 'i' to 'factors_of_10'
#     - call .reverse! on 'factors_of_10'
# - create a variable called 'mapped' and assign it to the following:
#     - call .map! on 'string_nums' |i|
#       - case i
#       - when 'i' then integer i
#          - for example: when '1' then 1
# - create a variable called 'abacus' and assign it to '[]'
#     - initiate a 'counter' variable to zero
#     - loop do
#     - abacus << mapped[counter] * factors_of_10[counter]
#     - increment counter
#     - break if counter == mapped.size
# - call .reduce(:+) on abacus


# Code

# def string_to_integer(string_nums)
#   string_nums = string_nums.chars
#   factors_of_10 = []
#   0.upto(string_nums.size - 1) {|i| factors_of_10 << 10 ** i}
#   factors_of_10.reverse!
#   mapped = string_nums.map do |i|
#     case i
#     when '1' then 1
#     when '2' then 2
#     when '3' then 3
#     when '4' then 4
#     when '5' then 5
#     when '6' then 6
#     when '7' then 7
#     when '8' then 8
#     when '9' then 9
#     when '0' then 0
#     end
#   end
#   abacus = []
#   counter = 0
#   loop do
#     abacus << mapped[counter] * factors_of_10[counter]
#     counter += 1
#     break if counter == mapped.size
#   end
#   abacus.reduce(:+)
# end

# p string_to_integer('4321') #== 4321
# p string_to_integer('9876570') #== 9876570
# p string_to_integer('0') #== 0
# p string_to_integer('11111') #== 11111
# p string_to_integer('0001') #== 0001



DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
          'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
          'F' => 15
          }

# def string_to_integer(string)
#   integers = string.chars.map {|i| DIGITS[i]}

#   value = 0
#   integers.each {|i| value = value * 10  + i}
#   value
# end


# p string_to_integer('82838485') == 82838485



def hexadecimal_to_integer(string)
  digits = string.upcase.chars.map {|i| DIGITS[i]}

  value = 0
  digits.each {|i| value = value * 16 + i}
  value
end


p hexadecimal_to_integer('FF') # (15*16) + 15 * 1 = 255
p hexadecimal_to_integer('AF3') # 2803 # (16**2 * 10) + (15*16) + 3   [2560 + 240 + 3] = 2803
p hexadecimal_to_integer('4D9f')  # 9871# (16**3 * 4) + (16**2 * 13) + (16 * 9) + 16 = [16,384 + 3,328 + 144 + 15]




























=begin
#DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
#       }


def string_to_integer(string)
  array = string.chars.map do |i| 
    DIGITS[i]
  end

  value = 0
  array.each {|i| value = i * 10 * value + 1}
  value
end



p string_to_integer('4321') #== 4321
=end





# Book Answer:

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = strings.chars.map { |char| DIGITS[char] }

#   value = 0
#   digis.each { |digit| value = 10 * value + digit }
#   value
# end

















