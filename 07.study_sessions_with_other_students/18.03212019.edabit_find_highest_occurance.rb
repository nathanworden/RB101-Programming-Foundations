# input: array
# ouput: array of most repeated elements

# def highest_occurrence(arr)
#   sorted = arr.sort {|a, b| a.to_s <=> b.to_s}
#   chunks = sorted.chunk_while {|i, j| i.to_s == j.to_s && i.class == j.class}.to_a
#   counts = []
#   chunks.each_with_index do |item, index|
#     counts << item.count
#   end
#   output = []
#   chunks.each do |chunk|
#     output << chunk[0] if chunk.size == counts.max
#   end

#   nums = []
#   strings = []
#   output.each do |element|
#     nums << element if element.class == Integer
#     strings << element if element.class == String
#   end

#   nums.sort!
#   strings.sort!
#   [nums, strings].flatten
# end

require 'pry'

def highest_occurrence(arr)
  sorted = arr.sort {|a, b| a.to_s <=> b.to_s}
  chunks = sorted.chunk_while {|i, j| i.to_s == j.to_s && i.class == j.class}.to_a
  counts = []
  chunks.each_with_index do |item, index|
    counts << item.count
  end
  output = []
  chunks.each do |chunk|
    output << chunk[0] if chunk.size == counts.max
  end

  binding.pry
  output.sort_by {|key| [key.is_a?(Integer) ? 0 : 1, key]}

end




# p highest_occurrence([1,2,2,3,3,3,4,4,4,4]) == [4]
# p highest_occurrence(["a"]) == ["a"]
# p highest_occurrence(["a","a"]) == ["a"]
# p highest_occurrence(["a","a","b"]) == ["a"]
# p highest_occurrence(["a","a","b"]) == ["a"]
# p highest_occurrence(["a","a","b","b"]) == ["a","b"]
# p highest_occurrence([1,"a","b","b"]) == ["b"]
# p highest_occurrence([1,2,2,3,3,3,4,4,4,4]) == [4]
# p highest_occurrence(["ab","ab","b"]) == ["ab"]
# p highest_occurrence(["ab","ab","b","bb","b"]) == ["ab","b"]
# p highest_occurrence([3,3,3,4,4,4,4,2,3,6,7,6,7,6,7,6,"a","a","a","a"]) == [3,4,6,"a"]
p highest_occurrence([2,2,"2","2",4,4]) == [2,4,"2"]

# p highest_occurrence([2, 3, 2, 5, 6, 7, 2]) == [2]

# p highest_occurrence([1, 2, 3, 3, "a", "b", "b", "c"]) == [3, "b"]

# p highest_occurrence(["it", "keeps", "coding", "on", "or", "it", "gets", "the", "hose"]) == ["it"]

# p highest_occurrence([2,2,"2","2",4,4]) == [2,4,"2"]


# This passes Test Case 7 on Edabit:
# def highest_occurrence(arr)
#   sorted = arr.sort {|a, b| a.to_s <=> b.to_s}
#   chunks = sorted.chunk_while {|i, j| i.to_s == j.to_s}.to_a
#   counts = []
#   chunks.each_with_index do |item, index|
#     counts << item.count
#   end
#   output = []
#   chunks.each do |chunk|
#     output << chunk[0] if chunk.size == counts.max
#   end
#   output
# end

