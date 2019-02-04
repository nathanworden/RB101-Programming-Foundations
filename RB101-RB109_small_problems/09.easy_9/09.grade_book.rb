# PEDAC


# Problem
# Write a method that determines the mean (average) of the three scores passeed to it
# Returns the letter value associated with that grade.

# Examples / Test Cases
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"
# get_grades(90, 36, 85) == 'C'

# Data Structures
# strings
# integers

# Algorithm
# define a method called 'get_grades' which accepts three arguments: grade1, grade2, grade3
# Add the grades up, and divide them by 3, store the value in a variable called 'mean'
# Use a case statement to output a letter grade string based on the value of the 'mean'

# Code

# def get_grade(grade1, grade2, grade3)
#   mean = (grade1 + grade2 + grade3) / 3
#   case
#   when mean >= 90 then 'A'
#   when mean >= 80 then 'B'
#   when mean >= 70 then 'C'
#   when mean >= 60 then 'D'
#   when mean >= 50 then 'F'
#   end
# end



# p get_grade(95, 90, 93) #== "A"
# p get_grade(50, 50, 95) #== "D"
# p get_grade(90, 36, 85) #== 'C'







# Book Answer

# The result is just the average of the three scores. The case statement does a comparison on it.
# This takes advantage of the fact that the comparison used by the case statement returns
# true if the range includes the other object (essentially calling (range.include?(other_object))


# def get_grade(s1, s2, s3)
#   result = (s1 + s2 + s3) / 3
#   case result
#   when 90..100 then 'A'
#   when 80..99 then 'B'
#   when 70..79 then 'C'
#   when 60..69 then 'D'
#   when 0..59 then 'F'
#   end
# end



# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"
# p get_grade(90, 36, 85) == 'C'



# Further Exploration

def get_grade(grade1, grade2, grade3)
  mean = (grade1 + grade2 + grade3) / 3
  case
  when mean >= 100 then 'A+'
  when mean >= 90 then 'A'
  when mean >= 80 then 'B'
  when mean >= 70 then 'C'
  when mean >= 60 then 'D'
  when mean >= 50 then 'F'
  end
end



p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"
p get_grade(90, 36, 85) #== 'C'
p get_grade(102, 100, 101) #== 'A+'














