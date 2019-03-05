# Tic Tac Toe

# 1. Display initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
#10. Good bye!


require "pry"

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  puts ""
  puts "     |     |   "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |   "
  puts "-----+-----+-----"
  puts "     |     |   "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |   "
  puts "-----+-----+-----"
  puts "     |     |   "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |   "
end


def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = ' '}
  new_board
end

def empty_squares(brd)


def player_places_piece(brd)
  square = ''
  loop do
    prompt "Choose a square (1-9):"
    square = gets.chomp.to_i
    if brd.keys.select{|num| brd[num] == ' ' }.include?(square)
      break
    }
    else
      prompt "Sorry, that's not a valid choice."
  end

  brd[square] = 'X'
end


board = initialize_board
display_board(board)

player_places_piece(board)
puts board.inspect
display_board(board)













