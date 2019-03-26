# Problem

# Algorithm

# Initiate a counter at 0
# Iterate through the list. If the current element is 1, increment counter 
# by 1 and flip all the elements.
# If the current element is 0, next
# return counter

# code

def freed_prisoners(arr)
  counter = 0
  return counter if arr[0] == 0
  arr.each do |cell|
    if cell == 1
      counter += 1
      arr.map! do |switch|
        if switch == 1
          switch = 0
        else
          swith = 1
        end
      end
    else
      next
    end
  end
  counter
end


p freed_prisoners([1, 1, 0, 0, 0, 1, 0]) == 4
p freed_prisoners([1, 0, 0, 0, 0, 0, 0]) == 2
p freed_prisoners([1, 1, 1, 0, 0, 0]) == 2
p freed_prisoners([1, 0, 1, 0, 1, 0]) == 6
p freed_prisoners([1, 1, 1]) == 1
p freed_prisoners([0, 0, 0]) == 0
p freed_prisoners([0, 1, 1, 1]) == 0