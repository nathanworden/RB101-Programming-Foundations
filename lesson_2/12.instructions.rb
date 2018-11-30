# Assignment: Calculator Bonus Features
# As you program more, you'll start to realize that there's no such thing as a program that's "done". Here are a few bonus features you can tackle if you're up for it. They're optional, so if you're in a rush, you don't have to do them.

# Better integer validation.

# The current method of validating the input for a number is very weak. It's also not fully accurate, as you cannot enter a 0. Come up with a better way of validating input for integers.

# Possible Solutions
# Option 1 - this is the easiest way to improve the method. It will handle "0" correctly.

# def integer?(input)
#   input.to_i.to_s == input
# end
# This isn't perfect, however, because while "0" will return true, if we input "00", this method will return false.

# Option 2 - use regex. Slightly more complex, but we're using the \d regular expression to test against all digits. The ^ means start of string, the + means "one or more" (of the preceding matcher), and the $ means end of string. Therefore, it has to be an integer, and a float, like 4.5 won't match. When there's a match, the match method will return a MatchData object, which will evaluate to true. When there's no match, it'll return nil, which will evaluate to false.

# def integer?(input)
#   /^\d+$/.match(input)
# end
# Option 3 - use built-in conversion method. In Ruby, there's a method called Kernel#Integer that will convert parameters to the method into an integer object. It will, however, raise a TypeError if the input is not a valid integer, so you'll have to handle that. Note: yes, that's a capitalized method in Ruby -- fortunately, that doesn't happen often.

# Note: trailing rescue is a "code smell", so be aware of that. In this specific instance, it's ok, but don't fall into a habit of suppressing errors this way.

# def integer?(input)
#   Integer(input) rescue false
# end
# Option 1 is really what you're expected to come up with at this point. The other two are merely to show you that there are frequently multiple ways to do the same thing in Ruby, with varying degrees of differences.

# Number validation.

# Suppose we're building a scientific calculator, and we now need to account for inputs that include decimals. How can we build a validating method, called number?, to verify that only valid numbers -- integers or floats -- are entered?

# Possible Solutions
# We'll create a method that tests to see whether the input is either a number or a float.

# def number?(input)
#   integer?(input) || float?(input)
# end
# We already have the integer? method, so all we need to do is implement a float? method.

# Option 1 -- just like before, this is the easiest way to check for floats.

# def float?(input)
#   input.to_f.to_s == input
# end
# This method has an edge case though:

# 2.2.2 :001 > '1.' == '1.'.to_f.to_s
# => false
# 2.2.2 :002 > '1.'.to_f
# => 1.0
# As you can see, to_f converts 1. to 1.0, which does not match the original string.

# Option 2 -- use regex. This regex is similar to the regex in the integer? method, except we have to account for more possible formats. We can combine two validations to verify that the input is a valid float. The first validation verifies that there is at least one digit in the input. The second validation incorporates the * which stands for "zero or more", and the ? which stands for "zero or one". This validation can be read as "zero or more digits, followed by an optional period, followed by zero or more digits. This validation will accept all of these formats: 11.11, 11., .11, but not a period by itself. Notice that we had to prefix the . with a backslash. That is because . matches any single character in regex. By escaping it, we tell Ruby that we are looking for the actual period character.

# def float?(input)
#   /\d/.match(input) && /^\d*\.?\d*$/.match(input)
# end
# Option 3 -- use the Kernel#Float method, which is analogous to the Kernel#Integer method from earlier. Just like that method, Float also raises an exception if you don't give it a valid float, so you have to handle it. Note: trailing rescue is a "code smell", so be aware of that. In this specific instance, it's ok, but don't fall into a habit of suppressing errors this way.

# def float?(input)
#   Float(input) rescue false
# end
# Of the 3 options, option 1 is probably easiest to follow. Using regex seems like a good idea, until you start to run into very subtle edge cases with it.

# One last thing to mention is that in programming, no matter what language you use, there's always the floating point precision problem. Be aware of that when dealing with large numbers, or working with the result of a division operation.

# Our operation_to_message method is a little dangerous, because we're relying on the case statement being the last expression in the method. What if we needed to add some code after the case statement within the method? What changes would be needed to keep the method working with the rest of the program?

# Possible Solution
# If we wanted to add code after the case statement, we would need to save the return value of the case into a variable, then make sure to return that variable, or that variable must be the last line in the method.

# def operation_to_message(operation)
#   word = case operation
#            when '1'
#              'Adding'
#            when '2'
#              'Subtracting'
#            when '3'
#              'Multiplying'
#            when '4'
#              'Dividing'
#          end

#   x = "A random line of code"

#   word
# end
# Extracting messages in the program to a configuration file.

# There are lots of messages sprinkled throughout the program. Could we move them into some configuration file and access by key? This would allow us to manage the messages much easier, and we could even internationalize the messages.

# Possible Solution
# First, we need to extract the messages into a configuration file. We can choose any format, from plain .txt file to json to csv. Ruby has libraries that can help with parsing any of those formats. Most Rubyists prefer the yaml format, so we'll use that. We'll extract our messages into a file called calculator_messages.yml. Make sure this file is created in the same directory as your calculator program.

# calculator_messages.ymlcalculator_messages.ymlcalculator_messages.yml

# welcome: "Welcome to Calculator! Enter your name:"
# valid_name: "Make sure to enter a valid name."

# # ... rest of file omitted for brevity
# As you can see, it's just a list of key/value pairs, almost like a hash. Next, we'll parse this .yml file using a module that comes with the Ruby standard Library.

# To use that module, in your calculator.rb file, add require 'yaml' and you can parse the calculator_messages.yml file, then save the parsed data into a variable.

# calculator.rbcalculator.rbcalculator.rb
# # at the top of file

# require 'yaml'
# MESSAGES = YAML.load_file('calculator_messages.yml')
# Before continuing, check out what MESSAGES is. You can do so with puts MESSAGES.inspect. Go do that now. We'll wait....

# If you did that, you should have seen that MESSAGES is a normal Ruby hash. The yaml gem parsed the contents of the yml file, and created a Ruby hash for us. This is convenient, because we know how to work with hashes.

# Now, all we have to do is replace all hard-coded strings with the key in the MESSAGES hash.

# # replace this:
# prompt("Welcome to Calculator! Enter your name:")

# # with this:
# prompt(MESSAGES['welcome'])
# Go ahead and replace all the prompt calls. Your program is now using a configuration file!

# Your calculator program is a hit, and it's being used all over the world! Problem is, not everyone speaks English. You need to now internationalize the messages in your calculator. You've already done the hard work of extracting all the messages to a configuration file. Now, all you have to do is send that configuration file to translators and call the right translation in your code.

# Possible Solution
# First, we'll have to reorganize our yml configuration a little bit to account for different languages. We'll nest the message keys under a top-level language, thereby organizing all the values. Here's an example:

# # reorganizing the calculator_messages.yml

# en:
#   welcome: "Welcome to Calculator! Enter your name:"
#   valid_name: "Make sure to enter a valid name."
# es:
#   welcome: "Bienvenido a la calculadora! Entre su nombre:"
#   valid_name: "Asegúrese de entrar un nombre válido."
# Note that we're using two top-level keys here to distinguish between English messages and Spanish messages. We could have as many top-level keys as we want to -- one for each language our program supports.

# Next, we have to study how this change affects our MESSAGES hash. If we do a puts MESSAGES.inspect in our program, we'll see that it's still a hash, except it's now a nested hash. This means we have to grab the language first, then the message. For example, we can get the Spanish welcome message like this:

# MESSAGES['es']['welcome']    # => Bienvenido a la calculadora! Entre su nombre:
# Because we'll need the language key every time we reference the message, let's move that to a method we can call. That way, we can pass in the language to the method, which can then reference the MESSAGES hash.

# calculator.rbcalculator.rbcalculator.rb
# # at top of file after initializing MESSAGES

# def messages(message, lang='en')
#   MESSAGES[lang][message]
# end
# This now means we can do this in our program:

# # english
# prompt(messages('welcome'))       # => Welcome to Calculator! Enter your name:

# # english
# prompt(messages('welcome', 'en')) # => Welcome to Calculator! Enter your name:

# # spanish
# prompt(messages('welcome', 'es')) # => Bienvenido a la calculadora! Entre su nombre:
# The last piece is setting a default language for your program.

# # top of calculator.rb

# LANGUAGE = 'en'
# And finally, whenever you call the prompt, you can do this:

# prompt(messages('welcome', LANGUAGE))
# If you think that's too verbose, you could move the code around a bit and modify the prompt method:

# def prompt(key)
#   message = messages(key, LANGUAGE)   # make sure the "messages" method is declared above this line
#   Kernel.puts("=> #{message}")
# end

# # now you can just do:
# prompt('welcome')
# Now, when non-English users want to use your calculator, all they have to do is change the LANGUAGE setting, provided you have translated the messages for them already.

# Hopefully you've enjoyed the excursions into building these interesting features. The goal here isn't to overwhelm you, but to let you see how various seemingly complicated features are built up piece by piece. Don't worry about mastering regex, or file processing, or internationalizing your programs. This assignment is to just show you how you can use various pieces of your knowledge to build useful features, and how seemingly complicated features are just pieced together bit by bit.