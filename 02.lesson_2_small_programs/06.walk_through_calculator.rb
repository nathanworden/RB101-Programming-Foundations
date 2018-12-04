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

prompt "Welcome to the Calculator! What is your name?"
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt "Did you forget to enter your name?"
  else
    break
  end
end

prompt "Hi #{name}!"

loop do
  prompt "What is the first number?"
  num1 = ''
  loop do
    num1 = gets.chomp
    if valid_num?(num1)
      break
    else
      prompt "hmm... That doesn't seem to be a valid number. Try again"
    end
  end

  prompt "What is the second number?"
  num2 = ''
  loop do
    num2 = gets.chomp
    if valid_num?(num2)
      break
    else
      prompt "hmm... That doesn't seem to be a valid number, Try again"
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
      prompt "Must choose 1, 2, 3, or 4"
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

  prompt "Would you like to do another calculation?"
  answer = gets.chomp.downcase
  puts "answer equals #{answer}"
  puts answer.inspect
  break unless answer.match(/^(y|yes)$/)
end

prompt "Thanks for using the calculator! Goodbye."
