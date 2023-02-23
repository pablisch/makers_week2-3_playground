def print(todos)
  puts (todos.map { |todo| todo.prepend("* ") })
end

print(["one", "two", "three"])

puts 

print(["one"])