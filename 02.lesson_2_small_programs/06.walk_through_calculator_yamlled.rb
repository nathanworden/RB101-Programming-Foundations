# Walk-through: Calculator
# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result

# Use the Kernel.gets() method to retrieve user input, and use Kernel.puts()
# method to display output. Remember that Kernel.gets() includes the newline,
# so you have to call chomp() to remove it: Kernel.gets().chomp().

# Let's take a first stab at it. Watch the video below and type along in a .rb 
# file.

require 'yaml'
MESSAGES = YAML.load_file('06.walk_through_calculator.yml')

def messages(message, lang= 'en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def valid_num?(num)
  num.match(/^\d*\.{0,1}\d+$/)
end

def operator_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    "Subtracting"
  when '3'
    "Multiplying"
  when '4'
    "Dividing"
  end
end


prompt(messages('welcome', 'es'))
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['invalid_name'])
  else
    break
  end
end

prompt "Hi #{name}!"

loop do
  prompt(MESSAGES['first_number'])
  num1 = ''
  loop do
    num1 = gets.chomp
    if valid_num?(num1)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  prompt(MESSAGES['second_number'])
  num2 = ''
  loop do
    num2 = gets.chomp
    if valid_num?(num2)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  operator_prompt = <<-MSG
  "What operation would you like to perform?"
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  prompt(operator_prompt)
  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['must_choose'])
    end
  end

  prompt "#{operator_message(operator)} the two numbers..."

  result = case operator
           when '1'
             num1.to_i + num2.to_i
           when '2'
             num1.to_i - num2.to_i
           when '3'
             num1.to_i * num2.to_i
           when '4'
             num1.to_f / num2.to_f
           end

  prompt "The result is #{result}"

  prompt(MESSAGES['again'])
  answer = gets.chomp.downcase
  break unless answer.match(/^(y|yes)$/)
end

prompt(MESSAGES['goodbye'])
