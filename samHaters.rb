puts "Hello, what's your name?"
name = gets.chomp

# if name[0].downcase == "s"
#   puts "#{name.upcase}!"
# else
#   puts "Hi #{name}."
# end

puts name[0].downcase == "s" ? "#{name.upcase}!" : "Hi #{name}."