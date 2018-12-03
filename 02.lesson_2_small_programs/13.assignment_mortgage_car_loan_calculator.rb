def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_apr?(apr)
  apr.to_f.to_s == apr
end


prompt("Welcome to the Mortgage Calculator!")

prompt("What is the loan amount?")

loan_amount = ''
loop do
  loan_amount = Kernel.gets().chomp()
  if loan_amount.empty?() || loan_amount.to_f() < 0
    prompt("Must enter positive number.")
  else
    break
  end
end


  prompt("What is the Annual Percentage Rate? (APR)")
  prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

  apr = ''
  loop do 
    apr = Kernel.gets().chomp()
    if apr.empty?() || apr.to_f() < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end



prompt("What is the loan duration in years?")
loan_duration_years = ''
loop do
  loan_duration_years = Kernel.gets().chomp()
  if loan_duration_years.empty?() || loan_duration_years.to_i() < 0
    prompt("Enter a valid number")
  else
    break
  end
end

apr_format_corrected = apr.to_f() / 100
monthly_interest_rate = apr_format_corrected / 12
prompt("your monthly interest rate is #{monthly_interest_rate}")
loan_duration_months = loan_duration_years.to_i * 12
prompt("your loan duration in months is #{loan_duration_months}")

monthly_payment = loan_amount.to_f() * 
                    (monthly_interest_rate / 
                    (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))

prompt("Your monthly payment will be #{monthly_payment}")







