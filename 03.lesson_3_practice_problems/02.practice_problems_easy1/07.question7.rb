# Fun with gsub:

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p eval(how_deep)


# Book Answer
# 42
# Note: The Kernel#eval method is a rarely used Ruby method. You're not expected to understand how it works at this stage.