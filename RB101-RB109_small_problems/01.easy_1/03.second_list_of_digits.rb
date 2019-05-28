# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.


# Algorithm
# turn the integer to a string and then turn it into an array

def digit_list(int)
  int.to_s.chars.map {|element| element.to_i}
end

# def digit_list(int)
#   output = []
#   loop do
#     int, remainder = int.divmod(10)
#     output.unshift(remainder)
#     break if int == 0
#   end
#   output
# end


p digit_list(12345) == [1, 2, 3, 4, 5]    
p digit_list(7) == [7]                    
p digit_list(375290) == [3, 7, 5, 2, 9, 0]
p digit_list(444) == [4, 4, 4]            