# Tic Tac Toe

# 1. Display initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3 Computer marks a square
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
#10. Good bye!

require 'pry'
require 'pry-byebug'

def display_board(brd)
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = num}
  new_board
end


board = initialize_board
display_board(board)

puts "Make your move. State the number corrisponding to the sqaure that you want to\
 put your 'X' in"
player_square = gets.chomp.to_i

def player_move(square)
  new_board = {}
  (1..9).each {|num| new_board[num] = num}
  new_board[square] = 'X'
  new_board
end


board = player_move(player_square)
display_board(board)


def computer_move(current_board)
  possible_squares = (1..9).to_a
  taken = []
  current_board.select do |key, value|
    if value == 'X'
      taken << key
    end
  end
  possible_squares = possible_squares.delete_if do |num|
    taken.include?(num)
  end
  computer_choice = possible_squares.rand

end












