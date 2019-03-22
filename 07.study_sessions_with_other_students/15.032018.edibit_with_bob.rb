

def over_twenty_one(cards)
  return false if cards == []
  return false if cards == nil
  values = cards.map do |card|
    case
    when card.to_s.start_with?('J', 'Q', 'K')
      10
    when card.class == Integer
      card
    when card.to_s.start_with?('A')
      "Ace!"
    else
      card
    end
  end
  if values.include?("Ace!")
    if values.select {|item| item == item.to_i }.reduce(:+) <= 10
      values.map! do |item| 
        if item == 'Ace!' 
          item = 11 
        else
          item
        end
      end
    else
      values.map! do |item| 
        if item == 'Ace!' 
          item = 1
        else
          item
        end
      end
    end
  end
  values.reduce(:+) > 21
end


# p over_twenty_one([2, 8, "J"]) == false
# p over_twenty_one(["A", "J", "K"]) == false
# p over_twenty_one([5, 5, 3, 9]) == true
# p over_twenty_one([2, 6, 4, 4, 5]) == false
# p over_twenty_one(["J", "Q", "K"]) == true
# p over_twenty_one(['A', 2, 3]) == false
# p over_twenty_one(['A', 'J', 'K']) == false
# p over_twenty_one(['A', 'J', 'K', 'Q']) == true
# p over_twenty_one([5, 3, 6, 6, 7, 9]) == true
# p over_twenty_one([]) == false



