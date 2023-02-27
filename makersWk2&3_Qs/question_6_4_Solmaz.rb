user_position = "hall"
puts "You are standing in a hall with a marble floor. You see a door"
while true do
  input = gets.chomp
  if input == "quit"
    puts "Bye!"
    break
  # Hall
  elsif input == "look" && user_position == "hall"
    puts "You are standing in a hall with a marble floor. You see a door."
  elsif input == "north"
    user_position = "study"
    # move to study
  # Study
  elsif input == "look" && user_position == "study"
    puts "You are in a warm and cosy study. You see a safe. You see a desk."
  elsif input == "south"
    user_position = "hall"
    # move to hall
  elsif input == "look at desk"
    puts "You see a piece of paper that reads, The combination is 2451."
  elsif input == "enter combination 2451"
    puts "You see some diamonds in the safe, pick them up and make your escape"
    break
  end
end