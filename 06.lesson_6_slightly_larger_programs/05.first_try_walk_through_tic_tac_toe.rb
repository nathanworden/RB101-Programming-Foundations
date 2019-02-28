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

puts "Turn 1: Make your move. State the number corrisponding to the sqaure that you want to\
 put your 'X' in."
player_square = gets.chomp.to_i

def player_move(square, board)
  # new_board = {}
  # (1..9).each {|num| new_board[num] = num}
  board[square] = 'X'
  board.each do |key, value| 
    if value == 'X' 
      board[key] = 'X'
    elsif value == 'O'
      board[key] = 'O'
    else
      board[key] = ' '
    end
  end
  board
end


board = player_move(player_square, board)
display_board(board)


def computer_move(current_board)
  possible_squares = (1..9).to_a
  taken = []
  current_board.select do |key, value|
    if value == 'X'
      taken << key
    elsif value == 'O'
      taken << key
    end
  end
  possible_squares = possible_squares.delete_if do |num|
    taken.include?(num)
  end
  computer_choice = possible_squares.sample
  current_board[computer_choice] = 'O'
  current_board
end

board = computer_move(board)
display_board(board)


def check_for_winner(board)
  winning_combos = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9]]
  streak_X = []
  streak_O = []
  board.each do |key, value|
    if value == 'X'
      streak_X << key
    end
    if value == 'O'
      streak_O << key
    end
  end
  binding.pry
  if winning_combos.include?(streak_X)
    puts "You win!"
    return true
  elsif  winning_combos.include?(streak_O)
    puts "The computer wins. You loose"
    return true
  else
    return false
  end
end

return if check_for_winner(board) == true

puts "Turn 2: Your move muchacho"
player_square = gets.chomp.to_i

board = player_move(player_square, board)
display_board(board)

board = computer_move(board)
display_board(board)

return if check_for_winner(board) == true

puts "Turn 3: Your move muchacho"
player_square = gets.chomp.to_i

board = player_move(player_square, board)
display_board(board)

board = computer_move(board)
display_board(board)

return if check_for_winner(board) == true

puts "Turn 4: Your move muchacho"
player_square = gets.chomp.to_i

board = player_move(player_square, board)
display_board(board)

board = computer_move(board)
display_board(board)

return if check_for_winner(board) == true

puts "Turn 5: Your move muchacho"
player_square = gets.chomp.to_i

board = player_move(player_square, board)
display_board(board)

if check_for_winner(board) == true
  return
else
  puts "its a tie! It's always a tie ;("
end


