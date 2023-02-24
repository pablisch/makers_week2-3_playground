# Write a program that lets two players play Rock, Paper, Scissors. The program should:
# * Ask player 1 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Ask player 2 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Calculates who has won.  `rock` beats `scissors`, `paper` beats
#   `rock`, `scissors` beat `paper`.
# * If player 1 has won, `puts`es `Player 1 wins`.
# * If player 2 has won, `puts`es `Player 2 wins`.
# * If the game is a draw, `puts`es `It's a draw`.
#
# * Note: You can assume that players will input one of the three
#   possible moves described above.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.
#
# * Note: You can assume the players will only ever input `rock`,
#   `paper` or `scissors`.

puts "Player 1, rock, paper or scissors?"
play1 = gets.chomp
puts "Player 2, rock, paper or scissors?"
play2 = gets.chomp

if play1 == "rock"
  res = play2 == "scissors" ? 1 : play2 == "paper" ? 2 : 3
elsif play1 == "paper"
  res = play2 == "rock" ? 1 : play2 == "scissors" ? 2 : 3
else
  res = play2 == "paper" ? 1 : play2 == "rock" ? 2 : 3
end

puts res == 3 ? "It's a draw" : "Player #{res} wins"