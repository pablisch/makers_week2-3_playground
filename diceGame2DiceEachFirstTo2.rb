my_score = 0
opp_score = 0
round = 1

while my_score < 2 && opp_score < 2 do

  my_die1 = rand(6) + 1
  my_die2 = rand(6) + 1
  opp_die1 = rand(6) + 1
  opp_die2 = rand(6) + 1

  puts "I got #{my_die1} and #{my_die2}."
  puts "you got #{opp_die1} and #{opp_die2}."

  my_total = my_die1 + my_die2
  opp_total = opp_die1 + opp_die2

  if my_total > opp_total
    puts "I win round #{round}!"
    my_score += 1
  elsif opp_total > my_total
    puts "I lose round #{round}!"
    opp_score += 1
  else 
    puts "Round #{round} is a draw."
  end

  puts

  if my_score == 2
    puts "I won the match #{my_score} to #{opp_score} in #{round} rounds! Yay!"
  elsif opp_score == 2
    puts "I lost the match #{opp_score} to #{my_score} in #{round} rounds! Doh!"
  end 

  round += 1
end

