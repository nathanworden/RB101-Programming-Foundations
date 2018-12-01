def prompt(message)
  puts "==> #{message}"
end

def valid_num?(num)
  num =~ /^\d+$/
end


prompt "Hello human, please enter a valid number"
num1 = ''
loop do
  num1 = gets.chomp
  if valid_num?(num1)
    break
  else
    prompt "hmm... that doesn't look quite right. Please enter a VALID number"
  end
end

