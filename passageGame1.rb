puts "Welcome to the dullest adventure ever!"
score = 0

until score == 2 do
  puts "You are facing forwards and can move forwards, left or right."
  puts "Which way would you like to go?"
  puts
  move = gets.chomp
  
  case move
  when "left"
    puts "Oh dear, you're dead. A werewolf bit your head off!"
    break
  when "right"
    puts "Oh dear, you're dead. A goblin smashed your skull in!"
    break
  when "forwards"
    puts "Good move. Seems safe enough."
    score += 1
  else
  puts "Errr... I don't think that was one of your options. Try again."
  end
end
puts "Congratulations. You win!" if score == 2


