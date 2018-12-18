def calculate_bonus(salary, bonus)
  if bonus
    return salary / 2
  else
    0
  end
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


#Book Answer:
# def calculate_bonus(salary, bonus)
#   if bonus ? (salary / 2) : 0
#   end
# end

# Discussion
# The solution to this exercise takes advantage of the ternary operator. We're able to use bonus as the condition because it's a boolean, which means its value will only be true or false. If it's true, then we divide salary by 2 and return the quotient. If it's false, then we return 0.