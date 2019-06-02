# PEDAC
# Problem: Write a method that returns the number of Friday the 13ths in the year
# given by an argument.
# Input: integer (year)
# Output: integer (number of Friday the 13ths in that year)

# Things I will need to know:
# If the year is a leap year
# What day of the week January 1st is of that year

# Examples / Test Cases

# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# Data Structures:
# Array

# Algorithm
# Obtain the day of the week of January 1st of the input year using Ruby's Date class
# Check if 





# Code
def friday_13th(year)
  require "Date"
  num_of_fri_13ths = 0
  months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  months.each {|month| num_of_fri_13ths += 1 if Date.new(year, month, 13).friday?}
  num_of_fri_13ths
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2


# Further Exploration
# Given a year, return the number of months in that year that have five Fridays

# You will need:
# To know if the year is a leap year

# Algorithm

# def months_w_5_fridays(year)
#   require "Date"

#   months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
#   five_fridays = 0
#   months.each do |month| 
#     days_in_month = Date.new(year, month, -1).day

#     fridays = 0

#     1.upto(days_in_month) do |day|
#       fridays += 1 if Date.new(year, month, day).friday?
#     end
#     five_fridays += 1 if fridays >= 5
#   end
#   five_fridays
# end


# p months_w_5_fridays(2005) #== 4
# p months_w_5_fridays(2006) #== 4
# p months_w_5_fridays(2007) #== 4
# p months_w_5_fridays(2008) #== 4
# p months_w_5_fridays(2009) #== 4
# p months_w_5_fridays(2010) #== 4
# p months_w_5_fridays(2011) #== 4
# p months_w_5_fridays(2012) #== 4
# p months_w_5_fridays(2014) #== 4
# p months_w_5_fridays(2015) #== 4
# p months_w_5_fridays(2015) #== 4
# p months_w_5_fridays(2016) #== 4
# p months_w_5_fridays(2017) #== 4
# p months_w_5_fridays(2018) #== 4
# p months_w_5_fridays(2019) #== 4
# p months_w_5_fridays(2020) #== 4




























