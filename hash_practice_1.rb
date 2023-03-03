students = {}

(1..10).each do |i|
  puts "Please give the name for student #{i}: "
  name = gets.chomp
  p name
  puts "And their marks out of 100: "
  mark = gets.chomp.to_i
  p mark
  student << name => mark
end