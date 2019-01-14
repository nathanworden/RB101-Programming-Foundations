DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
          '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
          'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
          'F' => 15
          }

# MY FIRST ANSWER:

# def string_to_signed_integer(string)
#   if string.start_with?("+", "-")
#     prefix = string[0]
#     string.gsub!(/(\+|\-)/, '')
#     integers = string.chars.map {|i| DIGITS[i]}
#     value = 0
#     integers.each {|i| value = value * 10  + i}
#     if prefix == '-'
#       return value - (value*2)
#     else
#       return value
#     end
#   elsif 
#     integers = string.chars.map {|i| DIGITS[i]}
#     value = 0
#     integers.each {|i| value = value * 10  + i}
#     value
#     end 
# end

# _______________________________________________________
# MY SECOND ANSWER:

def string_to_integer(string)
  integers = string.chars.map {|i| DIGITS[i]}
  value = 0
  integers.each {|i| value = value * 10  + i}
  value
end


def string_to_signed_integer(string)
  if string.start_with?("+", "-")
    prefix = string[0]
    string.gsub!(/(\+|\-)/, '')
    value = string_to_integer(string)
    prefix == '-' ? (value - (value * 2)) : value
  else string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
p string_to_signed_integer('9876545678') == 9876545678
p string_to_signed_integer('+85888') == 85888



# _______________________________________________________
# BOOK ANSWER:

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else string_to_integer(string)
#   end
# end


# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100
# p string_to_signed_integer('9876545678') == 9876545678
# p string_to_signed_integer('+85888') == 85888


# _______________________________________________________
# FURTHER EXPLORATION













