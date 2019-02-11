Question 19 1 / 1 Points Correct
Identify all of the code implementations that correctly meet the following set of requirements.

Given the following hash which contains keys representing countries and values representing the capital cities of those countries, return a new hash containing only the key-value pairs where the country begins with the letter 'B'.

countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}
Your Answer
A
countries_and_capitals.select { |_, country| country[0] == 'B' }
B
countries_and_capitals.each_with_object({}) do |(k, v), obj|
  obj[k] = v if k.chr == 'B'
end
C
def select_countries(hsh)
  sub_set = {}
  hsh.each_key do |country|
    if country[0] == 'B'
      sub_set[country] = hsh[country]
    end
  end
  sub_set
end

select_countries(countries_and_capitals)
D
def begins_with_b(string)
  string[0] == 'B'
end

countries_and_capitals.find_all do |country, capital|
  begins_with_b(country)
end
Discussion
Correct:

B & C. These both implement the requirements correctly.

Incorrect:

A. Although our second block parameter is called country it is actually referring to the hash value in each iteration, which in this case are the capitals.

D. This code returns a nested array rather than a hash; though if we refactored our code slightly to call to_h on this return value then the code would fulfill the requirements.

Review Topics:

Looping
Selection and Transformation
Methods
Enumerable#find_all method