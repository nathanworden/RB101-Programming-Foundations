require 'pry'


def reverse_words(str)
  arr = str.chars
  output = []
  word = []
  arr.each_with_index do |char, index|
    if char.match?(/\S/)
      word << char
    elsif char.match?(/\s/) || index == (arr.size - 1)
      output << word.join unless word.empty?
      word = []
      output << char
    end
  end
  output << word.join
  output.map {|word| word.reverse!}.join
end

p reverse_words('double  spaced  words') == 'elbuod  decaps  sdrow'