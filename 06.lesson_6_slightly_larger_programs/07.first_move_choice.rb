# Keep Score

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_MOVE = "choose"
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +  # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +  # columns
                [[1, 5, 9], [3, 5, 7]]                # diagnals

computer_wins = 0
player_wins = 0
ties = 0

loop do

  def prompt(msg)
    puts "=> #{msg}"
  end

  def display_board(brd, computer_wins, player_wins, ties)
    system 'clear'
    prompt "Score: Computer: #{computer_wins} Player: #{player_wins} Ties: #{ties}"
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

  def find_at_risk_square(line, brd, marker)
    if brd.values_at(*line).count(marker) == 2
      brd.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
    else
      nil
    end
  end

  def computer_places_piece!(brd)
    square = nil
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, COMPUTER_MARKER)
      break if square
    end
    if !square
      WINNING_LINES.each do |line|
        square = find_at_risk_square(line, brd, PLAYER_MARKER)
        break if square
      end
    end
    if brd[5] == INITIAL_MARKER
      square = 5
    end
    if !square
      square = empty_squares(brd).sample
    end
    brd[square] = COMPUTER_MARKER
  end

  def board_full?(brd)
    empty_squares(brd).empty?
  end

  def someone_won?(brd)
    !!detect_winner(brd)
  end

  def detect_winner(brd)
    WINNING_LINES.each do |line|   
      if brd.values_at(*line).count(PLAYER_MARKER) == 3
        return 'Player'
      elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
        return 'Computer'
      end
    end
    nil
  end

    board = initialize_board

  first_move = ''
  if FIRST_MOVE == 'choose'
    loop do
      prompt "Who goes first? Type 'p' for player or 'c' for computer"
      first_move = gets.chomp
      break if first_move.downcase.start_with?('p', 'c')
      prompt "Invalid input. Please type 'p' or 'c'"
    end
  end

  if first_move == 'p'
    loop do
      display_board(board, computer_wins, player_wins, ties)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
  elsif first_move == 'c'
    loop do
      display_board(board, computer_wins, player_wins, ties)

      computer_places_piece!(board)
      display_board(board, computer_wins, player_wins, ties)
      break if someone_won?(board) || board_full?(board)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
  end
    

  display_board(board, computer_wins, player_wins, ties)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    if detect_winner(board) == 'Player'
      player_wins += 1
    elsif detect_winner(board) == 'Computer'
      computer_wins += 1
    end
  else
    prompt "It's a tie!"
    ties += 1
  end


  if player_wins == 5 || computer_wins == 5
    prompt "#{detect_winner(board)} won 5 Games! They are the overall champion!"
    break
  end
end


prompt "Thanks for playing Tac Tac Toe! Goodbye!"























