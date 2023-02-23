players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

players_by_sport = {}

players.each do |player|
  sport = player[:sport]

  if players_by_sport[sport] == nil
    players_by_sport[sport] = []
  end

  players_by_sport[sport].push(player[:name])
end

p players_by_sport