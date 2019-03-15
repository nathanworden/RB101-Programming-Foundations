# Reverse the bits of a given 32-bit unsigned integer, and return the decimal 
# equivalent.

# Example 1:

# The input decimal unsigned integer 4294967293 is 
# 11111111111111111111111111111101 in 32-bit binary, so return 
# 10111111111111111111111111111111 converted to base 10, or 3221225471.

# Example 2:

# The input decimal unsigned integer 1 is 
# 00000000000000000000000000000001 in 32-bit binary, so return 
# 10000000000000000000000000000000 converted to base 10, or 2147483648.

# Example 3:

# The input decimal unsigned integer 43261596 is 
# 00000010100101000001111010011100 in 32-bit binary, so return 
# 00111001011110000010100101000000 converted to base 10, or 964176192.

# p reverse_bits(1)          == 2147483648
# p reverse_bits(43261596)   == 964176192
# p reverse_bits(4294967293) == 3221225471
# p reverse_bits(8589934591) == 8589934591
# p reverse_bits(0)          == 0



# Take in a decimal number
# Convert it to 32 bit
# reverse it
# Convert it back to decimal

def reverse_bits(num)
  num.to_s(2).rjust(32, '0').reverse.to_i(2)
end

p reverse_bits(1)          == 2147483648
p reverse_bits(43261596)   == 964176192
p reverse_bits(4294967293) == 3221225471
p reverse_bits(8589934591) == 8589934591
p reverse_bits(0)          == 0

