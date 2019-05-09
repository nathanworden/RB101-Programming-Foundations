# PEDAC

# Problem



# Algorithm


def who_is_next(names, r)
  index = 0
  loop do
    2.times {|_| names << names[index]}
    break if names.length >= r
    index += 1
  end
  return names[-1] if r.odd?
  names[-2]
end

p who_is_next(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 1) #== "Sheldon"
p who_is_next(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 52) #== "Penny"
p who_is_next(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 53) #== "Penny"