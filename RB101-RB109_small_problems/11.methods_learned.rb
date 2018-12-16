# divmod

# Returns an array containing the quotient and modulus obtained by dividing num 
# by numeric

num.divmod(numeric)
# => [(num / numeric), (num % numeric)}

4.divmod(2)       # [2, 0]
11.divmod(3)      # [3, 2]
11.divmod(-3)     # [-4, -1]
46.divmod(10)     # [4, 6]
46.divmod(-10)    # [-5, -4]

# You can do this:
number, remainder = 45.divmod(10)
# number == 4
# remainder == 5

################################################################################


