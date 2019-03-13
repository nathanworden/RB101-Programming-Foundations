require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end

def empty_squares(brd)
  brd.keys.select{|num| brd[num] == INITIAL_MARKER}
end

def joinor(array, separator=', ', last='or')
  if array.count == 1
    return "#{array[0]}"
  elsif array.count == 2
    return "#{array[0]} #{last} #{array[1]}"
  elsif array.count >= 3
    last_element = array.pop
    array.join(separator) + separator + last + ' ' + last_element.to_s
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Pick a square #{joinor(empty_squares(brd), ', ')}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "That is not a valid choice. Please choose an empty square"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +  # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +  # columns
                  [[1, 5, 9], [3, 5, 7]]               # diagnals
  winning_lines.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #    brd[line[1]] == COMPUTER_MARKER &&
    #    brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end    
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board

  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tac Tac Toe! Goodbye!"


# Tic Tac Toe

# 1. Display the initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!



# joinor fail

# def joinor(array, separator = ', ', last = 'or')
#   if array.count == 1
#     return "#{array[0]}"
#   elsif array.count == 2
#     return "#{array[0]} #{last} #{array[1]}"
#   elsif array.count >= 3
#     return "#{array[0]}#{separator}#{array[1]}#{separator}#{last} #{array[2]}"
#   end
# end


# joinor success!

# def joinor(array, separator = ', ', last = 'or')
#   if array.count == 1
#     return "#{array[0]}"
#   elsif array.count == 2
#     return "#{array[0]} #{last} #{array[1]}"
#   elsif array.count >= 3
#     last_element = array.pop
#     array.join(separator) + separator + last + ' ' + last_element.to_s
#   end
# end


# p joinor([1, 2])                      ==  "1 or 2"
# p joinor([1, 2, 3])                   ==  "1, 2, or 3"
# p joinor([1, 2, 3], '; ')             ==  "1; 2; or 3"
# p joinor([1, 2, 3], ', ', 'and')      ==  "1, 2, and 3"
# p joinor([1, 2], ', ', 'and')         ==  "1 and 2"
# p joinor([1, 2, 3, 4, 5, 6, 7, 8, 9]) == "1, 2, 3, 4, 5, 6, 7, 8, or 9"

# joinor book answer


# Problem
# Write a method called joinor that will take one, two, or three inputs.
# The first input is an array and it is requred
# The second input is optional and defaults to ', '
# The third input is optional and defaults to 'or'
# The method will print out a list of the elements in 'array' with a delimiter
# in between each element. Before the final element it will also have the word
# 'or'. If the user puts a third method argument, it will replace 'or' with the input word

# Examples / Test Cases
# See above

# Data Structures 
# Array, String

# Algorithm
# define a method that accepts three arguments. 
# The first argument is an array and it is required
# The second and third argument are strings and they are default to ', ' and 'or' respectevley
# Based on the length of the array, set up three paths for the code to execute.
# You can do this using a case statement
# The first case is if the length of the array is 1
# If the length of the array is 1, print that element by itself
# The second case is if the length of the array is 2
# If the length of the array is 2 the print out a string using concatenation saying "first element or second element"
# The third case is if the length of the array is 3 or more
# Create a new empty array called 'end_array'
# Pop off the last element of 'array' and push it into 'end_array'
# Place your third string argument at the beginning of the 'end_array' variable using unshift
# print out a string using concatenation which uses join on 'array' and you delimeter and
# then concatenates the first element of 'end_array' and then the second element of 'end_array'


# def joinor(arr, delimeter=', ', last='or')
#   case arr.size
#   when 0 then ''
#   when 1 then "#{arr}"
#   when 2
#     "#{arr[0]} or #{arr[1]}"
#   when 3
#     end_array = {}
#     end_array << arr.pop
#     "#{arr.join(delimeter)}#{delimeter}#{last} #{end_array}"
#   end
# end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end


p joinor([1, 2])                      ==  "1 or 2"
p joinor([1, 2, 3])                   ==  "1, 2, or 3"
p joinor([1, 2, 3], '; ')             ==  "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')      ==  "1, 2, and 3"
p joinor([1, 2], ', ', 'and')         ==  "1 and 2"
p joinor([1, 2, 3, 4, 5, 6, 7, 8, 9]) == "1, 2, 3, 4, 5, 6, 7, 8, or 9"

p joinor([1, 2], ', ', 'and') # == "1 and 2"




















































# def joinor(arr, delimiter=', ', word='or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.jion(delimeter)
#   end
# end






















