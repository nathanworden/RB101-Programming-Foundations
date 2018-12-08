def outcome(comp_choice, player_choice)
  puts "=> Computer throws: #{comp_choice}"
  puts "=> You threw: #{player_choice}"
end

def valid_response?(player_choice)
  player_choice.match(/^(scissors|rock|paper)$/)
end

loop do
  puts "Make a choice: Rock, Paper, or Scissors:"
  player_choice = ''
  loop do
    player_choice = gets.chomp.downcase
    if valid_response?(player_choice)
      break
    else
      puts "hmm... that doesn't look quite right. Try again"
    end
  end

  comp_choice = rand(1..3)

  comp_choice = case comp_choice
                when 1
                  "rock"
                when 2
                  "paper"
                when 3
                  "scissors"
                end

  if player_choice == comp_choice
    outcome(comp_choice, player_choice)
    puts "Tie!"
  elsif player_choice == 'rock' && comp_choice == 'paper'
    outcome(comp_choice, player_choice)
    puts "Computer wins"
  elsif player_choice == 'rock' && comp_choice == 'scissors'
    outcome(comp_choice, player_choice)
    puts "You win!"
  elsif player_choice == 'paper' && comp_choice == 'rock'
    outcome(comp_choice, player_choice)
    puts "You win!"
  elsif player_choice == 'paper' && comp_choice == 'scissors'
    outcome(comp_choice, player_choice)
    puts "Computer wins!"
  elsif player_choice == 'scissors' && comp_choice == 'paper'
    outcome(comp_choice, player_choice)
    puts "You win!"
  elsif player_choice == 'scissors' && comp_choice == 'rock'
    outcome(comp_choice, player_choice)
    puts "Computer wins"
  end

  puts "Would you like to play again?"
  answer = gets.chomp.downcase
  if answer.match(/^(y+|yes)$/)
    next
  else
    break
  end
end

puts "Goodbye"
