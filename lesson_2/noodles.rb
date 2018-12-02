def prompt(message)
  puts "==> #{message}"
end

def valid_num?(num)
  num =~ /^\d*\.{0,1}\d+$/
end


prompt "Hello human, please enter a valid number"
num1 = ''
loop do
  num1 = gets.chomp
  if valid_num?(num1)
    prompt "That is a valid number. Good job."
    break
  else
    prompt "hmm... that doesn't look quite right. Please enter a VALID number"
  end
end



