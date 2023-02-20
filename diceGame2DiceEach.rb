my_die1 = rand(6) + 1
my_die2 = rand(6) + 1
opp_die1 = rand(6) + 1
opp_die2 = rand(6) + 1

puts "I got #{my_die1} and #{my_die2}."
puts "you got #{opp_die1} and #{opp_die2}."

my_score = my_die1 + my_die2
opp_score = opp_die1 + opp_die2

puts my_score > opp_score ? "I win!" : opp_score > my_score ? "I lose!" : "It's a draw."