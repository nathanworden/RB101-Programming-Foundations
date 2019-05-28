# Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.


# Algorithm
# split the string into an array of words
# Iterate through the array
    # If a word has five or more letters, transform to reversed
    # If a words has less than five letters, leave it be

def reverse_words(string)
  output = string.split.map do |word|
    if word.length >=5 
      word.reverse
    else
      word
    end
  end
  output.join(" ")
end


puts reverse_words('Professional')          == "lanoisseforP"
p reverse_words('Walk around the block') == "Walk dnuora the kcolb"
puts reverse_words('Launch School')         == "hcnuaL loohcS"