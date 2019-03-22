# Snail Race

# PEDAC

# Problem
# Maurice win 2/3
# A win has to be outright. 

# Example
# maurice_wins([1, 9, 11], [8, 9, 10]) == true

# Algorithm
# Arrange Steves snails [fastest, slowest, medium]
# Arrange Maurice snail [slowest, medium, fast]
# initiate a score variable
# compare the arrays and increment score each time Maurice's snails are faster
# If score is 2 or higher at end, return true

def maurice_wins(maurice, steve)
  steve_sort = []
  steve_sort << steve.max << steve.min
  middle = steve.select {|snail| snail != steve.min && snail != steve.max}
  steve_sort << middle[0]

  maurice.sort!

  score = 0

  if maurice[0] > steve_sort[0] then score += 1
  end
  if maurice[1] > steve_sort[1] then score += 1
  end
  if maurice[2] > steve_sort[2] then score += 1
  end

  if score >= 2 
    return true
  else
    return false
  end

end


p maurice_wins([3, 5, 10], [4, 7, 11]) == true
# Since the matches are (3, 11), (5, 4) and (10, 7), Maurice wins 2 out of 3. 

p maurice_wins([6, 8, 9], [7, 12, 14]) == false
# Since the matches are (6, 14), (8, 7) and (9, 12), Steve wins 2 out of 3. 

p maurice_wins([1, 8, 20], [2, 9, 100]) == true


