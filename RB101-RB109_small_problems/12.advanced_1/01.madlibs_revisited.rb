

# madlibs = {"NOUN_1" => "Llama", "NOUN_2" => "father", "NUMBER" => "1st", "NAME_1" => "Yano", 
#             "NAME_2" => "Lloyd", "VERB_1" => "FIGHT", "GERUND" => "sitting", 
#             "ADJECTIVE_1" => "sleepy", "ADJECTIVE_2" => "hairy", 
#             "ADJECTIVE_3" => "itchy", "ADJECTIVE_4" => "lumpy", 
#             "ADJECTIVE_5" => "moist", "YOUR_NAME" => "Nathan"}

# madlibs = {"NOUN_1" => "Cat", "NOUN_2" => "Table", "NUMBER" => "7th", "NAME_1" => "Albert", 
#             "NAME_2" => "Nathan", "VERB_1" => "SLAP", "GERUND" => "smiling", 
#             "ADJECTIVE_1" => "happy", "ADJECTIVE_2" => "dark", 
#             "ADJECTIVE_3" => "smelly", "ADJECTIVE_4" => "dirty", 
#             "ADJECTIVE_5" => "upset", "YOUR_NAME" => "Matt"}

madlibs = {"NOUN_1" => "Tiger", "NOUN_2" => "Air-Baloon", "NUMBER" => "9th", "NAME_1" => "Spartcus", 
            "NAME_2" => "Germain", "VERB_1" => "LANCE", "GERUND" => "parkaruing", 
            "ADJECTIVE_1" => "flamboyant", "ADJECTIVE_2" => "lagubrious", 
            "ADJECTIVE_3" => "nonchlant", "ADJECTIVE_4" => "altered", 
            "ADJECTIVE_5" => "charismatic", "YOUR_NAME" => "Albert"}

# text =  File.read("story.txt")
# Or the story with adjectives:
text = File.read("dumb_story.rb")

  no_periods = text.gsub(/\./, ' period. ')
  # text = no_periods.gsub(/\R+/, 'NEW_PARAGRAPH')
  no_start_quotations = no_periods.gsub(/\“/, ' start_quotation ')
  no_end_quotations = no_start_quotations.gsub(/\”/, ' end_quotation ')
  no_commas = no_end_quotations.gsub(/\,/, ' comma ')
  no_exclamations = no_commas.gsub(/\!/, ' exclamation ')
  text = no_exclamations

# p text.split(/\s|\“|\”|\,/)

output = text.split(/\s/).map do |word|
  if madlibs.keys.include?(word)
    madlibs[word] 
  elsif word == "period."
    "."
  elsif word == "start_quotation"
    "“"
  elsif word == "end_quotation"
    "”"
  elsif word == "comma"
    ","
  elsif word == 'exclamation'
    "!"
  else
    word
  end
end

output.delete_if {|word| word == " " || word == ""}

output.each_with_index do |word, index|
  if word == "!"
    output[index - 1] = output[index - 1] + "!"
  end
end

output.delete_if do |word|
  word == "!"
end

output.each_with_index do |word, index|
  if word == "“"
    output[index + 1] = "“" + output[index + 1]
  elsif word == "”"
    output[index - 1] = output[index - 1] + "”"
  elsif word == ","
    output[index - 1] = output[index - 1] + ","
  end
end

output.delete_if do |word| 
  word == "“" || word == "”" || word == ","
end

sentences = output.join(" ").split(".")

sentences.each {|sentence| sentence.delete_suffix!(" ")}

sentences.each do |sentence|
  puts sentence + "." + "\n"
end


# puts output.join(" ")









