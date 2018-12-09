VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_INPUTS = %w(r rock p paper s scissors l lizard S spock)

win_set = {'rock' => ['lizard', 'scissors'],
       'lizard'=> ['spock', 'paper'],
       'spock' => ['scissors', 'rock'],
       'scissors' => ['paper', 'lizard'],
       'paper' => ['rock', 'spock']}

def win?(first, second, set)
  set[first].include?(second)
end

def display_results(player, computer, set)
  if win?(player, computer, set)
    prompt("You won!")
  elsif win?(computer, player, set)
      prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  human = 0
  computer = 0
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp()

      if VALID_INPUTS.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample()

    if choice == 'r'
      choice = 'rock'
    elsif choice == 'p'
      choice = 'paper'
    elsif choice == 's'
      choice = 'scissors'
    elsif choice == 'l'
      choice = 'lizard'
    elsif choice == 'S'
      choice = 'spock'
    end

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(choice, computer_choice, win_set)

    if win?(choice, computer_choice, win_set)
      human +=1
      prompt("Your score is #{human}. The computer's score is #{computer}")
    elsif win?(computer_choice, choice, win_set)
      computer +=1
      prompt("Your score is #{human}. The computer's score is #{computer}")
    end

    if human == 5
      prompt("You won 5 times! You are the grand champion!")
      break
    elsif computer ==5
      prompt("Computer won 5 times. Computer is the Grand Champion")
      break
    end
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
