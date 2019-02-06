# PEDAC


# Problem
# Wite a method which takes a grocery list (array) of frutis with conutities
# Returns an array of the correct number of each fruit.

# Examples / Test Cases
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Data Structures
# array, string, integer

# Algoritm
# Define a method called 'buy_fruit' which accepts an array of arrays as an argument
# initiate an empty array called 'result'
# For each element in the array, push to result the first element multipled by the second element
# 

# Code

def buy_fruit(array)
  result = []
  array.each {|element| result << Array.new(element[1], element[0])}
  result.flatten
end


# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#    ["apples", "apples", "apples", "orange", "bananas","bananas"]




def buy_fruit(list)
  list.map { |fruit, quantity, second_quantity| [fruit] * quantity * second_quantity }.flatten
end



p buy_fruit([["apples", 3, 2], ["oranges", 3, 3], ["strawberry", 4, 4]])