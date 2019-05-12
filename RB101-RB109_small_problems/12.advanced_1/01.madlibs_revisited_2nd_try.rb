File.open("dumb_story_2nd_try.txt") do |file|
  file.each do |line|
    puts format(line, noun1: "dog",
                      noun2: "bed",
                      number1: "17",
                      name1: "Nathan",
                      name2: "Moo Moo Cow",
                      verb1: "jump".upcase,
                      gerund: "pooping",
                      adjective1: "smelly",
                      adjective2: "mad",
                      adjective3: "happy",
                      adjective4: "soft",
                      adjective5: "hard",
                      your_name: "Laura")
  end
end

