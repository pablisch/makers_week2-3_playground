my_die = rand(6) + 1
opp_die = rand(6) + 1
puts "I got #{my_die}."
puts "you got #{opp_die}."

puts my_die > opp_die ? "I win!" : opp_die > my_die ? "I lose!" : "It's a draw."