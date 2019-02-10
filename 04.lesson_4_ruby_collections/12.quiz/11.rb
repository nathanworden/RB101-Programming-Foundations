# Question 11 0 / 1 Points Incorrect
# Identify all the code samples which are not examples of transformation.

# Your Answer
# A
# def star_method(stars)
#   arr = []
#   stars.each do |star|
#     arr.push(star.upcase)
#   end
#   arr
# end

# stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
# stars_2 = star_method(stars_1)
# B
# def star_method(stars)
#   arr = []
#   counter = 0

#   until counter == stars.size
#     star = stars[counter]
#     arr << star if star.size > 4

#     counter += 1
#   end
#   arr
# end

# stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
# stars_2 = star_method(stars_1)
# C
# def star_method(stars)
#   for star in stars
#     star.downcase
#   end
# end

# stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
# stars_2 = star_method(stars_1)
# D
# def star_method(stars)
#   arr = []
#   counter = 0

#   until counter == stars.size do
#     arr << stars[counter][0, 3]

#     counter += 1
#   end
#   arr
# end

# stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
# stars_2 = star_method(stars_1)
# Discussion
# Correct:

# B. This is selection, rather than transformation; stars_2 contains a sub-set of the elements in stars_1.

# C. This is neither selection nor transformation. Although we call downcase on each element in stars, the way that the method is implemented means that nothing in our stars_1 or stars_2 arrays is selected or transformed. As with each, the return value of a for loop in Ruby (and therefore of our method) is simply the object it was called on, in this case the stars_1 array that we passed to the method.

# Incorrect:

# A & D. These are transformation. In both cases stars_2 contain altered versions of the strings in stars_1.

# Review Topics:

# Looping
# Selection and Transformation