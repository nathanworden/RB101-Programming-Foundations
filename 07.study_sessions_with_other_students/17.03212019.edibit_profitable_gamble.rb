def profitable_gamble(prob, price, cost)
  net_outcome = prob * price - cost
  net_outcome > 0
end
