require 'yaml'
MESSAGES = YAML.load_file('14.calculator_messages.yml')


def prompt(message)
  Kernel.puts("=> #{message}")
end

=begin
def valid_number?(num)
  num.to_i().to_s() == num      # Option 1 for validating an integer. This will handle "0" correctly, but "00" will return 'false'.
  # /^\d+$/.match(num)          # Option 2: Use regex. The ^ means start of string, the + means "one or more" (of the preceding matcher), and the $ means end of string.
  # Integer(num) rescue false   # Option 3: Use built-in conversion method. In Ruby, there's a method called 'Kernel#Integer' that will convert parameters to the method into an integer object. It will, however, rase a 'TypeError' if the input is not a valid integer, so you'll have to handle that.
end
=end

def valid_number?(num)
  num.to_i().to_s() == num || num.to_f().to_s() == num
end

def operation_to_message(operation)
  word = case operation         # Our operation_to_message method is a little dangerous, because we're relying on the case statement being the last expression in the method. What if we needed to add some code after the case statement within the method? What changes would be needed to keep the method working with the rest of the program?
          when '1'
            'Adding'
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
          end

  x = "A random line of code"
  word                           # If we wanted to add code after the case statement, we would need to save the return value of the case into a variable, then make sure to return that variable, or that variable must be the last line in the method.
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['number1'])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['number2'])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiiply
  4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['must_choose'])
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt "The result is #{result}"

  prompt(MESSAGES['more?'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])



