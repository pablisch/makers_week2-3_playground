

groups = [["Jnr"], ["Aman"]]
people = ["Sam", "Tom", "Shula", "Nat", "Kim"]

puts "Group 1: #{groups[0]}"
puts "Group 2: #{groups[1]}"
puts

people.each_with_index do |person, index|
  groups[(index + 2) % 2] << person
end

puts "Group 1: #{groups[0]}"
puts "Group 2: #{groups[1]}"


