students = {}
number_of_students = 3

(1..number_of_students).each do |i|
  puts "Please give the name for student #{i}: "
  name = gets.chomp
  break if name == "quit"

  while (name !~ /\d+/) == false
    puts "Please enter a name without digits: "
    name = gets.chomp
  end
  puts "And their marks out of 100: "
  mark = gets.chomp
  break if mark == "quit"

  while (mark !~ /[a-zA-Z]/) == false || mark.to_i < 0 || mark.to_i > 100
    puts "Please enter a mark from 0 to 100: "
    mark = gets.chomp
  end
  students.store(name, mark.to_i) # .store(key, value) adds a hash key/value pair
  puts "Thanks, that's #{i} of #{number_of_students} students recorded."
end

puts "students is currently #{students}"

sorted_by_mark = students.sort_by { |student, mark| mark }.reverse
puts sorted_by_mark


