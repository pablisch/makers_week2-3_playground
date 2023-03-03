puts "You find yourself in the Hall"

location = "Hall"

while true 
  puts "You are in the Hall, would you like to go north or south? "
  input = gets.chomp
  if input == "quit"
    puts "bye"
    break 
  end
  
  if location == "Hall" && input == "north"
    puts "You are in study"
    location = "study"
  elsif location == "Hall" && input == "look"
    puts "You are standing in a hall with a marble floor. You see a door."
  elsif location == "study" && input == "south"
    puts "You are in Hall"
    location = "Hall"
  elsif location == "study" && input== "look"
    puts "You are in a warm and cosy study. You see a safe. You see a desk."
  elsif location == "study" && input == "look at desk"
    puts "You see a piece of paper that reads, The combination is 2451."
  elsif location == "study" && input == "enter combination 2451"
    puts "You see some diamonds in the safe, pick them up and make your escape."
    break
  end
end