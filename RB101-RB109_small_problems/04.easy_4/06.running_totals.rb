# Algorithm
# - initiate an empty 'output' array with one element which is the first element of the input array
# - initiate a counter at 0
# - run a loop
# - break when the counter equals the length of the input array
# - push the sum of the current element of the 'output' array and the next element of the input array to the output array
# - increment counter
# - return the output array

# rules:
# 



def running_total(array)
  output = []
  return output if array.empty?
  output[0] = array[0]
  counter = 1

  while counter < array.size
    output << (output[counter - 1] + array[counter])
    counter += 1
  end
    output
  end



p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []





# Book answer:
# def running_total(num)
#   sum = 0
#   num.map {|value| sum += value}
# end



# Further Exploration using .each_with_object:
# def running_total(array)
#   total = 0
#   output = array.each_with_object([]) do |number, new_array| 
#     new_array << total + number
#     total += number
#   end
#   output
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []


# Further Exploration using .inject
# def running_total(array)
#   output = []
#   array.inject(0) do |sum, n|
#     output << sum += n
#     sum
#   end
#   output
# end

# p running_total([2, 5, 13]) #== [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
# p running_total([3]) #== [3]
# p running_total([]) #== []




# Running Totals
# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# Examples:

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []
# Hide Solution & Discussion
# Solution
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end
# Discussion
# This solution does nothing fancy; it just walks through the array calculating the running total while building the resulting array. #map makes this really easy.

# Further Exploration
# Try solving this problem using Enumerable#each_with_object or Enumerable#inject (note that Enumerable methods can be applied to Arrays)


