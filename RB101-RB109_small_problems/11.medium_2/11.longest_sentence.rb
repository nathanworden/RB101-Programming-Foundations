# PEDAC

# Problem
# Read the content of a text file
# Print the longest sentence based on the number of words
# Sentences end with . ! ?
# Any sequence of characters that are not spaces or sentence ending characters are a word.
# Print the number of words in the longest sentence.


# Examples

# Algorithm
# Save the contents of the file in a variable called 'text'
# Split the text on . ! ?
# Split each of thos on whitespace
# Count the number of words  and save an array with the number of words
# Return the array of words that has the same index as the array with the largest number of words
# Join the array and return that and the number


# text = "Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth."


# text = File.read('Frankenstein_text.txt')

# sentences = text.split(/\.|\?|\!/)
# words = sentences.map do |sentence|
#   sentence.split(" ")
# end

# length = words.map do |sentence|
#   sentence.length
# end

# longest = length.max

# index = length.index(longest)

# p sentences[index] + "."
# p "The longest sentence is #{longest} words long"




# Further Exploration


# text = File.read('Frankenstein_text.txt')
# paragraphs = text.split(/\n/)
# largest_paragraph = paragraphs.max_by { |paragraph| paragraph.split.size }
# largest_paragraph = largest_paragraph.strip
# number_of_words = largest_paragraph.split.size

# puts "#{largest_paragraph}"
# puts "The largest paragraph contains #{number_of_words} words"


text = File.read('Frankenstein_text.txt')
sentences = text.split(/\.|\?|\!/).join(" ")
words = sentences.split(" ")
largest_word = words.max_by { |word| word.size }
largest_word = largest_word.strip
number_of_characters = largest_word.size

puts "#{largest_word}"
puts "The largest word contains #{number_of_characters} characters"










