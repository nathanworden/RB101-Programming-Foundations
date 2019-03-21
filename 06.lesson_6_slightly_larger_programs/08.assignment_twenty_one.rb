# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

def initialize_deck
  new_deck = []
  suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
  base_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
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

def value_of_hand(hand)
   values = hand.map do |card|
      case card
      when card.start_with?('J', 'Q', 'K')
        10
      when card.start_with?(/\d/)
        card.to_i
      when card.start_with?('A')
        "Ace!"
      end
    end
end

def player_turn(deck, player_hand, dealer_hand)


end

player_hand = []
dealer_hand = []

deck = initialize_deck
initial_deal(deck, player_hand)
initial_deal(deck, dealer_hand)

player_turn(deck, player_hand, dealer_hand)

puts "player hand: #{player_hand}"
puts "dealer hand: #{dealer_hand[0]}"



p deck.count






