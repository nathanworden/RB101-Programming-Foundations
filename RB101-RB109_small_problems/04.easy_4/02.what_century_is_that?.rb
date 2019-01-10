# PEDAC

# Problem
# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the centry number and ends with 'st', 'nd', 'rd', or 'th'
# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20 century.
# Question: Do we need to do input validation?
# Implicit Requirements:
# - When you should put st, nd, rd, or th for the numbers.
# - How to convert a year into a century.
# input:
# - integer number
# - do we need to validate?
# output:
# - a string
# - begins with the centry number
# - ends with st, nd rd, or th
# rules:
# - new centries begin in years that end with 01
# - centry string number into a string:
#     - 1: st
#     - 2: nd
#     - 3: rd
#     - 4-20: th
#     - 21: st
#     - 22: nd 23: rd
#     - 24-30: th
# ...
#     - generalize:
#          - centry_number % 10
#             - 1, 2, 3: st, nd, rd
#             - 0, 4-9: th
#          - except for 11, 12, 13


# Examples / Test Cases

# century(1) == '1st'
# century(14) == '1st'
# century(100) == '1st'
# century(101) == '2nd'
# century(133) == '2nd'
# century(245) == '3rd'
# century(1052) == '11th'
# century(1152) == '12th'
# century(1252) == '13th'
# century(2012) == '21st'
# century(2112) == '22nd'
# century(22222) == '223rd'
# century(22512) == '226th'

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# Data Structures
# integers, strings

# Algorithm
# define a method called 'century' that takes one integer as input
# create an array that holds the following: %w('st', 'nd', 'rd', 'th') called endings
# call % 10 on the input integer
#     - If the result is 1, save a string in a variable called 'ending' that is endings[0]
#     - If the result is 2, save a string in a variable called 'ending' that is endings[1]
#     - If the result os 3, save a string in a variable called 'ending' that is endings[3]
#     - If the result is anything else, save a string in a variable called 'ending' that is endings [4]



# first century = less than 101
# second centruy = 101 - 200
# third century = 201 - 300
# fourth century = 301 - 400
# fifth century = 401 - 500
# sixth century = 501 - 600
# seventh century = 601 - 700
# eigth century = 701 - 800
# ninth century = 801 - 900
# tenth century = 900 - 1000
# eleventh century = 1001 - 1200
# 

# Code Try 3

def century(year)
  if year % 100 == 0
    century = year / 100
  elsif year % 100 != 0
    century = (year / 100) + 1
  end


  endings = %w(st nd rd th)

  if century % 100 == 11 
    return century.to_s + endings[3]
  elsif century % 100 == 12
    return century.to_s + endings[3]
  elsif century % 100 == 13
    return century.to_s + endings[3]
  else
    case century % 10
    when 1
      century.to_s + endings[0]
    when 2
      century.to_s + endings[1]
    when 3
      century.to_s + endings[2]
    when 11
      century.to_s + endings[3]
    else
      century.to_s + endings[3]
    end
  end
end


 p century(1) == '1st'
 p century(14) == '1st'
 p century(100) == '1st'
 p century(101) == '2nd'
 p century(133) == '2nd'
 p century(245) == '3rd'
 p century(1052) == '11th'
 p century(1152) == '12th'
 p century(1252) == '13th'
 p century(2012) == '21st'
 p century(2112) == '22nd'
 p century(22222) == '223rd'
 p century(22512) == '226th'
 p century(2000) == '20th'
 p century(2001) == '21st'
 p century(1965) == '20th'
 p century(256) == '3rd'
 p century(5) == '1st'
 p century(10103) == '102nd'
 p century(1052) == '11th'
 p century(1127) == '12th'
 p century(11201) == '113th'
 p century(1000) == '10th'
 p century(1001) == '11th'
 p century(11111001) == '111111th'
 p century(11110001) == '111101st'


# Code Try 2 Fail
# def century(year)

#   if year.to_s.size < 3
#     '1st'
#   elsif year.size >= 3
#     return (year / 100) + 1
#   end

# end



# Code try 1 fail

# def century(year)
#   endings = %w('st' 'nd' 'rd' 'th')
#   case year % 10
#   when 1
#     ending = endings[0]
#   when 2
#     ending = endings[1]
#   when 3
#     ending = endings[2]
#   else
#     ending = endings[3]
#   end
#   puts ending
# end


# century(2000) 
# century(2001) 
# century(1965) 
# century(256) 
# century(5) 
# century(10103) 
# century(1052) 
# century(1127) 
# century(11201) 



# Book Answer:

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end



