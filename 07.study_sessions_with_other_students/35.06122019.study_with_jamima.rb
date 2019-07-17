# Return the integer that occurs an odd number of times
# There will only be one integer that appears an odd number of times

# Example:
# find_it([5, 5, 3, 3, 2, 2, 5, 3, 5, 3, 9, 9, 9]) == 9

# Probably the best way to do this is with the array:

# def find_it(array)
#   array.each do |element|
#     return element if array.count(element).odd?
#   end
# end


# For some reason I liked the idea of doing it with a hash.
# Jamima reminded me about Hahs.new(0)

def find_it(array)
  integers = Hash.new(0)
  array.each do |element|
    integers[element] += 1
  end
  integers.each do |key, value|
    return key if value.odd?
  end
end



p find_it([5, 5, 3, 3, 2, 2, 5, 3, 5, 3, 9, 9, 9, 9, 34]) #== 34