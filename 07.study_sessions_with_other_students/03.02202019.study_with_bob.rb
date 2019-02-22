
# Given a string of ones and zeros as a binary number, return the decimal value as a string.op

def decimaler(bin)
  acc = 0
  bin.chars.reverse.each_with_index do |char, i|
    acc += char.to_i * 2**i
  end
  acc
end


p decimaler('11011111') == 223