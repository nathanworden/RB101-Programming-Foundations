# Hi Nathan,

# I came across a simpler example of recursion in Matz’s book. It computes 
# the factorial of a number:

def factorial(num)
  raise 'Number must be greater than zero' if num <= 0 
  return num if num == 1
  num * factorial(num - 1)
end

p factorial(5)

# Leave off the raise statement, which is only there to raise an error if 
# you pass anything below 1 to the method. 

# So, with the value 5, the first time through you hit the main line 
# num * factorial(num - 1). That, obviously, passes a 4 to the method.
#  Next call passes a 3, then a 2, and finally a 1; the 1 is the exit point 
#  and so doesn’t make a recursive call. At that point, as we talked about 
#  before, the program works backwards, “un-nesting” the calls. So, the last 
#  call returns 1 to the last call but one. That call returns 2 * 1 or 2 to the 
#  ne before it, which returns 3 * 2 or 6 to the one before it, and so on:
#   next 4 * 6 or 24, and finally 5 *24 or 120. 120 is 5 factorial, which you
#    can verify in the more usual human way: 5 * 4 is 20 * 3 is 60 * 2 is 
#    120 * 1 is 120.

# Does that help? If I were teaching recursion, I think this is the example
#  I would use. It’s about as straightforward as it can be.