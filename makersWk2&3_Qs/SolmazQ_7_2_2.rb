puts "Enter number of groups"
group = gets.chomp.to_i

array = Array.new(group) { [] }
count = 0
while true do
  puts "Enter a name"
  name = gets.chomp
  if name == "stop"
    break
  end

  if count == array.length
    count = 0
  end

  array[count] << name
  count += 1
end
array.each { |name| puts name.join(", ")}