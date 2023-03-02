
scrabble = { :zero_points => [" "], :one_point => ["E", "A", "I", "O", "N", "R", "T", "L", "S", "U"], 
  :two_points => ["D", "G"], :three_points => ["B", "C", "M", "P"], :four_points => ["F", "H", "V", "W", "Y"],
  :five_points => ["K"], :eight_points => ["J", "X"], :ten_points => ["Q", "Z"] }
  # Ask user for word, assume word is in uppercase and only contains letters and blanks
  puts "Enter a word"
  word = gets.chomp.to_sym
  
  # Set score value to zero
  score = 0
  
  # Iterate through that word and assign a point to each letter and blank space
  scrabble.each { |key, value| score[key] * value.to_i }
  puts score.sum