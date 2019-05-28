# Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]



# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Algorithm
# Create a hash that has every element of the input array as a key and a value of 0
# Each time through, if the key is not in the hash yet, add it to the 
# Hash with value 0. If it is already there add one to the current value.


p count_occurrences(vehicles)

def count_occurrences(array)
  occurrences = {}
  array.each do |vehicle|
    if occurrences.include?(vehicle)
      occurrences[vehicle] += 1
    else
      occurrences[vehicle] = 1
    end
  end
  occurrences.each {|key, value| puts "#{key} => #{value}"}
end

p count_occurrences(vehicles)


# Further Exploration

# def count_occurrences(array)
#   occurrences = {}
#   array.each do |vehicle|
#     if occurrences.include?(vehicle.downcase)
#       occurrences[vehicle.downcase] += 1
#     else
#       occurrences[vehicle.downcase] = 1
#     end
#   end
#   occurrences.each {|key, value| puts "#{key} => #{value}"}
# end

# p count_occurrences(vehicles)







# Another student's answer:


# def count_occurrences(array)
#   h = Hash.new(0)
#   array.each { |v| h[v] += 1 }
#   h.each { |k, v| puts "#{k} => #{v}" }
# end


# This works because of the way he initiated the hash.
# Apparently when you use Hash.new(0) then every key you have has an intitial
# value of 0 instead of nil



