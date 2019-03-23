# input: 2 strings
# output: boolean
# true if first argument ends with second argument


# Get the size of the second argument
# Chop off the characters from the beginning of the first argument
# if the remainder of the first argument == the second, true


def check_ending(str1, str2)
  str1[(str1.length - str2.length)..-1] == str2
end


p check_ending("abc", "bc") == true
p check_ending("abc", "d") == false
p check_ending("samurai", "zi") == false
p check_ending("feminine", "nine") == true
p check_ending("convention", "tio") == false
p check_ending("cooperative", "ooper") == false
p check_ending("extraterrestrial", "xtraterrestrial") == true
p check_ending("access", "ss") == true
p check_ending("motorist", "is") ==false
p check_ending("landowner", "landowner") == true