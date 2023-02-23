players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

# sorted_by_sport = {
#   tennis: ["Sam", "Ed"],
#   squash: ["Mary"],
#   football: ["Mark"]
# }

sorted_by_sport = {}

players.each do |player|
  sport = player[:sport]
  name = player[:name]

  if sorted_by_sport[sport] == nil
    sorted_by_sport[sport] = [name]
  else
    sorted_by_sport[sport] << name
  end
end

p sorted_by_sport