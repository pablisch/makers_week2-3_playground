puts "Enter number of groups"
group = gets.chomp.to_i
array = []

puts "Enter a name"
count = 0
while name = gets.chomp
  puts "Hi"
  if name == "stop"
    break
  elsif puts "Enter a name"     
    array << name
    p array
    count += 1
  end
end
p array
array.each { |name| puts name }