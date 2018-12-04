def prompt(message)
  puts "=> #{message}"
end

def valid_amount?(amount)
  amount.match(/^\$?\d*,?(\d{3}|)\.?\d+%?$/)
end

prompt "Hello! And welcome to the amazing Morgage Calculator!"

loop do
  prompt "What is the loan amount?"
  amount = ''
  loop do
    amount = gets.chomp
    if valid_amount?(amount)
      break
    else
      prompt "hmm... that doesn't look quite right. What is the loan amount?"
    end
  end

  prompt "What is the Annual Percentage Rate? (APR)"
  apr = ''
  loop do
    apr = gets.chomp
    if valid_amount?(apr)
      break
    else
      prompt "hmm... that doesn't look quite right. What is the APR?"
    end
  end

  prompt "What is the loan duration in years?"
  duration = ''
  loop do
    duration = gets.chomp
    if valid_amount?(duration)
      break
    else
      prompt "hmmm... that doesn't look quite right. What is the loan duration\
      in years?"
    end
  end

  if apr.match(/^0*\.{1}\d+$/)
    interest_rate = apr.to_f / 12
  elsif apr.match(/^\d{0,2}\.{0,1}\d{0,3}%?$/)
    interest_rate = apr.to_f / 100 / 12
  end

  puts "#{amount} before gsub" 
  if amount.include?(',')
    amount.gsub!(',', '')
  end
  if amount.include?('$')
    amount.gsub!('$', '')
  end
  puts "#{amount} after gsub"

  duration = duration.to_f * 12

  monthly_payment = amount.to_f * (interest_rate /
  (1 - (1 + interest_rate)**-duration))

  prompt "Your monthly payment will be $#{format('%02.2f', monthly_payment)}"

  prompt "Would you like to calculate another mortgage? (yes/no)"
  answer = gets.chomp.downcase
  break unless answer.match(/^(y|yes)$/)
end

prompt "Thaks for using the Mortgage Calculator! Goodbye"
