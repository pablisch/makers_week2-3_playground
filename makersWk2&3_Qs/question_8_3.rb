# Write a program that groups people based on their favourite
# things. In should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Put the `people` into groups where each group has people who share
#   the same favourite thing.
# * Print out the names of the people in each group.  Before each
#   group, it should say which favourite thing the people in the group
#   share.
#
# * Example output:
#   ```
#   Enter category to group people by
#   sport
#   squash
#   Mary
#   Lauren
#   Govind
#   weightlifting
#   Isla
#   Awad
#   cycling
#   Sam
#   Will
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

favourites = {}
puts "Enter category to group people by"
category = gets.chomp.downcase

people.each do |person| 
  # for each 'person' in the array, fave is their favourite 
  # of the chosen category, e.g. fave = person[furit] == e.g. kiwi
  fave = person[category]
  # 'fave' is made a key in the new 'favourites' hash with an empty
  # array as the value if it does not already exist.
  favourites[fave] = [] if favourites[fave] == nil
  # The 'person's name is pushed into the array value to the relevant key.
  favourites[fave] << (person["name"])
end

favourites.each do |key, value|
  puts key
  value.each { |name| puts name }
end

