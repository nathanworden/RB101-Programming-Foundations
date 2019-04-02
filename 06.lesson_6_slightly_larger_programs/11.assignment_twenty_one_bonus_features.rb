# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  new_deck = []
  suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
  base_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack'] +
                ['Queen', 'King', 'Ace']
  base_values.each do |value|
    suits.each do |suit|
      card = value + ' of ' + suit
      new_deck << card
    end
  end
  new_deck
end

def hit(deck, player)
  card = deck.sample
  deck.delete(card)
  player << card
end

def initial_deal(deck, player)
  2.times do
    hit(deck, player)
  end
end

def value_of(hand)
  values = hand.map do |card|
    if card.start_with?('J', 'Q', 'K')
      10
    elsif card.start_with?(/\d/)
      card.to_i
    elsif card.start_with?('A')
      "Ace!"
    end
  end
  if values.include?("Ace!")
    if values.all?("Ace")
      values = [1, 1]
    end
    if values.select { |card| card != "Ace!" }.reduce(:+) > 10
      values.map! do |card|
        if card == "Ace!"
          1
        else
          card
        end
      end
    else
      values.map! do |card|
        if card == "Ace!"
          return 11
        else
          return card
        end
      end
    end
  end
  values.reduce(:+)
end

def busted?(hand)
  value_of(hand) > 21
end

def player_turn(deck, player_hand)
  answer = nil
  loop do
    prompt "Would you like to hit, or stay?"
    prompt "Current player hand: #{player_hand}"
    answer = gets.chomp
    hit(deck, player_hand) if answer.start_with?('h')
    break if answer.start_with?('s') || busted?(player_hand)
  end

  if busted?(player_hand)
    prompt "You busted! Game over"
    return
  else
    prompt "You chose to stay!"
  end
end

def dealer_turn(deck, dealer_hand)
  loop do
    break if busted?(dealer_hand) || value_of(dealer_hand) >= 17
    hit(deck, dealer_hand)
    prompt "Dealer hits. Dealer hand total: #{value_of(dealer_hand)}"
  end
end

def final_score(player_hand, dealer_hand)
  prompt "Player hand: #{player_hand} Total: #{value_of(player_hand)}"
  prompt "Dealer hand: #{dealer_hand} Total #{value_of(dealer_hand)}"
end

def result(player_hand, dealer_hand)
  if value_of(player_hand) > value_of(dealer_hand)
    "Player wins!"
  elsif value_of(dealer_hand) > value_of(player_hand)
    "Dealer Wins"
  else
    "Its a tie!"
  end
  final_score
end

player_hand = []
dealer_hand = []

deck = initialize_deck
initial_deal(deck, player_hand)
initial_deal(deck, dealer_hand)

prompt "dealer showing: #{dealer_hand[0]}"

player_turn(deck, player_hand)
prompt player_hand

dealer_turn(deck, dealer_hand)
if busted?(dealer_hand)
  prompt "Dealer busted. Game over. You win!"
  final_score(player_hand, dealer_hand)
else
  result(player_hand, dealer_hand)
end
