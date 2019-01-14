DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']


def integer_to_string(integer)
  holder = []
  holder << integer.digits.reverse.map {|i| DIGITS[i] }
  holder.join
end


def signed_integer_to_string(number)
  if number > 0 
    '+' + integer_to_string(number)
  elsif number < 0 
    '-' + integer_to_string(number.abs)
  else
   '0'
  end
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'


















# Book answer


# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end






