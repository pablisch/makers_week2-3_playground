puts "1, 2 or 3?"
num = gets.chomp.to_i
p num
puts 
res = num == 1 ? "one" : num == 2 ? "two" : "three"
p res