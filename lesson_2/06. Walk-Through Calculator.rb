# Walk-through: Calculator
# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply 
# or divide
# displays the result

# Use the Kernel.gets() method to retrieve user input, and use 
# Kernel.puts() method to display output. Remember that Kernel.gets() 
# includes the newline, so you have to call chomp() to remove 
# it: Kernel.gets().chomp().

# Let's take a first stab at it. Watch the video below and type along 
# in a .rb file.


# MY Answer:
# puts "Please enter two numbers"
# puts "Number 1: "
# num1 = Kernel.gets().chomp().to_i()

# puts "Number 2: "
# num2 = Kernel.gets().chomp().to_i()

# puts "What operation would you like to perform?: add, subtract, multiply or divide."
# operation = Kernel.gets().chomp()


# case operation
#   when "add"
#     Kernel.puts(num1 + num2)
#   when "subtract"
#     Kernel.puts(num1 - num2)
#   when "multiply"
#     Kernel.puts(num1 * num2)
#   when "divide"
#     Kernel.puts(num1 / num2)
#   else
#     Kernel.puts("Your input did not make sense. Please enter 'add', 'subtract', 'multiply', or 'divide'.")
#   end



# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)


Kernel.puts("Welcome to Calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiiply 4) divide")
operator = Kernel.gets().chomp()

if operator =='1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")












