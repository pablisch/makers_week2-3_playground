# Write an adventure game that the player plays from the command line
# by typing in commands like `look`, `north` etc.  They can move
# between rooms, look at things and interact with objects.  The game
# should have this behaviour:
# * Two rooms: hall and study.
# * The player starts in the hall.
# * General commands (can be run at any time).
#   * `quit`: `puts`es `Bye!` and the program stops executing.
#   * (command incorrect for situation): nothing happens, nothing is
#                                        `puts`ed.
# * Room-specific commands
#   * Hall
#     * `look`: `puts`es `You are standing in a hall with a marble
#               floor. You see a door.`
#     * `north`: Move to the study.
#   * Study:
#     * `look`: `puts`es `You are in a warm and cosy study. You see a
#               safe. You see a desk.`
#     * `look at desk`: `puts`es `You see a piece of paper that reads,
#                       The combination is 2451.`
#     * `south`: Move to the hall.
#     * `enter combination 2451`: `puts`es `You see some diamonds in
#                                 the safe, pick them up and make your
#                                 escape` and the program stops
#                                 executing.
#
# * Note: To stop the program (e.g. when the user types `quit` or when
#   they win the game), don't use `exit` to quit the program because
#   this will break the automated tests.  To exit a while loop early,
#   use the `break` keyword.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.
# 
# * Note: To pass the tests, you'll need to `puts` exactly what's
#   expected. Watch out for stray punctuation, capital letters, etc.

place = "hall"

puts "Welcome. You may move around using commands 'north' and 'south'."
puts "You may also 'look' where you are and look at objects. Good luck."

while true do
  act = gets.chomp
  if act == "quit"
    puts "Bye!"
    break
  else
    if place == "hall"
      if act == "north"
        puts "You move north into the study."
        place = "study"
      else
        puts act == "look" ? "You are standing in a hall with a marble floor. You see a door."
        : act == "south" ? "You can only move north from the hall." 
        : "I'm sorry, I don't understand the command '#{act}'."
      end
    elsif place == 'study'
      if act == "south"
        puts "You move south into the hall"
        place = "hall"
      elsif act == "enter combination 2451"
        puts "You see some diamonds in the safe, pick them up and make your escape"
        break
      else
        puts act == "look" ? "You are in a warm and cosy study. You see a safe. You see a desk."
        : act == "north" ? "You can only move south from the study."
        : act == "look at desk" ? "You see a piece of paper that reads, The combination is 2451."
        : "I'm sorry, I don't understand the command '#{act}'." 
      end
    end  
  end
end

# while true do
#   act = gets.chomp
#   if act == "quit"
#     puts "Bye!"
#     break
#   else
#     if place == 'hall'
#       if act == "look"
#         puts "You are standing in a hall with a marble floor. You see a door." 
#       elsif act == "north"
#         puts "You move north into the study."
#         place = "study"
#       elsif act == "south"
#         puts "You can only move north from the hall."
#       else
#         puts "I'm sorry, I don't understand the command '#{act}'."
#       end
#     elsif place == 'study'
#       if act == "look"
#         puts "You are in a warm and cosy study. You see a safe. You see a desk." 
#       elsif act == "south"
#         puts "You move south into the hall"
#         place = "hall"
#       elsif act == "north"
#         puts "You can only move south from the study."
#       elsif act == "look at desk"
#         puts "You see a piece of paper that reads, The combination is 2451."
#       elsif act == "enter combination 2451"
#         puts "You see some diamonds in the safe, pick them up and make your escape"
#         break
#       else
#         puts "I'm sorry, I don't understand the command '#{act}'."
#       end
#     end  
#   end
# end