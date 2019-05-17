# Our countdown to launch isn't behaving as expected. 
# Why? Change the code so that our program successfully counts down from 10 to 1.

# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   decrease(counter)
# end

# puts 'LAUNCH!'


# My Answer:
# Due to object passing rules, 'counter' is not mutated when passed into #decrease
# the 'counter' in the #decrease method is different than the 'counter' variable
# outside of it. When decrease(counter) is called it is not used or saved.
# Thus, this code will output '10' 10 times.

# To fix the code so it works, you don't need the 'decrease' method. You can
# simply decrement 'counter' by one each time throu the #times loop


# counter = 10

# 10.times do
#   puts counter
#   counter -= 1
# end

# puts 'LAUNCH!'


#Further Exploration

# 10.downto(1) do |num|
#   puts num
# end

# puts 'LAUNCH!'


# Another Further Exploration

counter = 10

loop do
  puts counter
  counter -= 1
  break if counter == 0
end

puts 'Launch!'










