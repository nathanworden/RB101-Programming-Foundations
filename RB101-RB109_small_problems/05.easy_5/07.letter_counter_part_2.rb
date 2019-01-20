




def word_sizes(sentence)
  output = Hash.new(0)
  sentence.split.each do |word|
    word.gsub!(/[^a-zA-Z]/, '')
    output[word.size] += 1
  end
  output
end



p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}




# Book Answer

# def word_sizes(word_string)
#   counts = Hash.new(0)
#   word_string.split.each do |word|
#     clean_word = word.delete('^a-zA-Z')
#     counts[clean_word.size] += 1
#   end
#   counts 
# end


# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}