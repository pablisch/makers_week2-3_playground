river = "-----,--C--,CC-CC,CC-CC"

# Define the player position
player_position = 2

# Loop through each part of the river
river_parts = river.split(',')
river_parts[0][player_position] = 'P'

# Loop until the player is eaten or survives the whole river
loop do
  # Output the whole array
  puts river_parts

  # Replace the P with a hyphen
  river_parts[0][player_position] = '-'

  # Check if the player is in the same position as a crocodile
  if river_parts[0][player_position] == 'C'
    puts 'You were eaten.'
    break
  end

  # Check if the player survived the river
  if river_parts.length == 1
    puts 'You survived!'
    break
  end

  # Ask the player for their move
  puts 'Type left, right or neither'
  move = gets.chomp.downcase

  # Move the player according to their move
  case move
  when 'left'
    player_position -= 1
  when 'right'
    player_position += 1
  end

  # Move the player down the river
  river_parts.shift
  river_parts[0][player_position] = 'P'
end