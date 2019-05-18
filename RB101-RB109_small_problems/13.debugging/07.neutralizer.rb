def neutralize(sentence)
  words = sentence.split(' ')
    words.each_with_index do |word, index|
      p index
      p word
      p words
    words.delete(word) if negative?(word)
    p words
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic',
    'nerdy'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.


# We wrote a neutralize method that removes negative words from sentences. 
# However, it fails to remove all of them. What exactly happens?

# My answer:
# The implementation of the delete method cycles through each word using
# An indexer. When two words to be deleted are next to each other, when the first
# word is deleted, the second word takes its place, and thus also has an index 
# within the collection that was already checked by delete.

# One solution would be to do the cycle twice, so that any words that were sheilded 
# the first time are exposed the second time. (but that means if four uniqe negative)
# words are in a row it ill miss the fourth.

# def neutralize(sentence)
#   words = sentence.split(' ')
#   2.times do
#       words.each do |word|
#       words.delete(word) if negative?(word)
#     end
#   end

#   words.join(' ')
# end

# def negative?(word)
#   [ 'dull',
#     'boring',
#     'annoying',
#     'chaotic',
#     'nerdy'
#   ].include?(word)
# end

# puts neutralize('These dull boring annoying nerdy cards are part of a chaotic board game.')