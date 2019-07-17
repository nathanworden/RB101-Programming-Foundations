class PetSchool
  attr_accessor :current_enrolled_pets, :lessons
  
  def initialize(name)
    @name = name  
  end
  
  def enroll_pet(pet)
    @currently_enrolled_pets << pet
  end
  
  def set_lesson_time
    
  end
  
end

class Pet
  attr_accessor :name, :owner
  
end

class Lesson
  attr_accessor :time, :location, :name, :purpose
  
end
  
nathan = PetSchool.new("Nathan's pet school")
nathan.enroll_pet(Pet.new('Jemima', 'Frank'))
  
## Sum of parts 
# Let us consider this example (array written in general format):

# ls = [0, 1, 3, 6, 10]

# Its following parts:

# ls = [0, 1, 3, 6, 10]
# ls = [1, 3, 6, 10]
# ls = [3, 6, 10]
# ls = [6, 10]
# ls = [10]
# ls = []
# The corresponding sums are (put together in a list): [20, 20, 19, 16, 10, 0]

# The function parts_sums (or its variants in other languages) will take as parameter a list ls and return a list of the sums of its parts as defined above.

# Other Examples:
# ls = [1, 2, 3, 4, 5, 6] 
# parts_sums(ls) -> [21, 20, 18, 15, 11, 6, 0]
# ls = [2, 3, 4, 5, 6] -> #(sum would be 20)

# ls = [744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358]
# parts_sums(ls) -> [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]

# Problem
# Given array of integers, return an array of the sums of
# subsuent arrays drived by cutting off the first element.

# Each time you take the first element off the array, you will
# sum the current array and push that sum to the output array
# and continue until the original array is empty.

# Examples
# ls = [3, 5]
# [8]
# [5]
# [8, 5]
# []
# [8, 5, 0] # this is the output


# Data Structure
# Arrays
# integers


# Algorithm
# Set up a empty output array
# Begin loop
# sum the input array and push the result to the output array
# Shift (cut off the front) element of the inputarray
    # mutate the input array
# sum the new, shorter array and push the sum to the output array
# Contune this loop until the input array is empyt
# Return the output array


# Code

# def parts_sums(input_array)
#   output = []
#   loop do
#     output << input_array.sum
#     break if input_array.empty?
#     input_array.shift
#   end
#   output
# end


def parts_sums(input_array)
  total = input_array.sum
  output = [total]
  input_array.size.times do 
    total = total - input_array.shift
    output << total
  end
  output
end

arr = [0, 1, 3, 6, 10]
p parts_sums(arr) == [20, 20, 19, 16, 10, 0]


p parts_sums([3, 5]) #== [8, 5, 0]

p parts_sums([1, 2, 3, 4, 5, 6]) == [21, 20, 18, 15, 11, 6, 0]