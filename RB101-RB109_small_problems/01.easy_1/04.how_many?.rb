#  Understand the Problem
#     - for n in array
#     - compare n to n + 1
#     - if n == n + 1
#          - add one to the count of n
#     - print each element alongside the number of occurances

# Examples / Test Cases

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
# count_occurrences(vehicles)
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Data Structure
# input: array
# output: hash

# Algorithm


# Abstraction


# MY ANSWER:

# def count_occurrences(vehicles)
#   vehicle_occurences = {}
#   vehicles.each do |vehicle|
#     if vehicle_occurences[vehicle] == nil
#       vehicle_occurences[vehicle] = 1
#     elsif vehicle_occurences[vehicle] +=1
#     end
#   end
#   vehicle_occurences.each {|key, value| puts "#{key} => #{value}"}
# end


# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# noms = ['nom', 'dom', 'nom', 4, '', 'nom', 'dom']

# count_occurrences(vehicles)


# Book Answer:

def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each {|key, value| puts "#{key} => #{value}"}
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)