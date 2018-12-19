# Question 3
# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

# MY ANSWER:

advice = advice.split()
advice[6] = 'urgent'
p advice = advice.join(' ')


# Book Answer:

# p advice.gsub!('important', 'urgent')


