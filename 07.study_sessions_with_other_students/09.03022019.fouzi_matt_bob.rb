# Write a program that creates a tic tac toe board and asks the user for two inputs.
# One input picks one of the squares of the board.
# The second input is a string to place in the square.
# Create your board such that it has scaling proportions so that the size of every
# square gets bigger based on the size of the string that the user inputs.
# The program will print the board with the string in the square desginated by the user


require "pry"

def prompt(msg)
  puts "#{msg}"
end

def display_board(brd, spaces, dashes)
  puts ""
  puts "  #{spaces}  |  #{spaces}  |  #{spaces}"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "  #{spaces}  |  #{spaces}  |  #{spaces}"
  puts "--#{dashes}--+--#{dashes}--+--#{dashes}--"
  puts "  #{spaces}  |  #{spaces}  |  #{spaces}"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "  #{spaces}  |  #{spaces}  |  #{spaces}"
  puts "--#{dashes}--+--#{dashes}--+--#{dashes}--"
  puts "  #{spaces}  |  #{spaces}  |  #{spaces}"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "  #{spaces}  |  #{spaces}  |  #{spaces}"
end

dashes = '-'
spaces = ' '

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = ' '}
  new_board
end

board = initialize_board
display_board(board, spaces, dashes)


def choices_everywhere(brd, spaces, dashes)
  new_board = {}
  prompt "Pick a square"
  square = gets.chomp.to_i
  prompt "What would you like to say?"
  choice = gets.chomp
  (choice.size - 1).times {|num| spaces << " "}
  (choice.size - 1).times {|num| dashes << "-"}
  (1..9).each {|num| new_board[num] = spaces}
  new_board[square] = choice
  new_board
end

# binding.pry

board = choices_everywhere(board, spaces, dashes)

# board = player_places_piece(board)
display_board(board, spaces, dashes)