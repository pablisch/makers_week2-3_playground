thing1 = "one"
puts thing1 # => one
puts thing1.object_id # => 60

thing2 = thing1
puts thing2 # => one
puts thing2.object_id # => 60

thing1[3] = "s"
puts thing2 # => ones
puts thing2.object_id # => 60

thing1 = "ones"
puts thing1 # => ones
puts thing1.object_id # => 80
puts thing2 # => ones
puts thing2.object_id # => 60

thing10 = "ones"
puts thing10 # => ones
puts thing10.object_id # => 100

puts

thing3 = 1
puts thing3 # => 1
puts thing3.object_id # => 3
thing4 = thing3
puts thing4 # => 1
puts thing4.object_id # => 3
thing5 = 1
puts thing5 # => 1
puts thing5.object_id # => 3

thing3 += 1
puts thing3 # => 2
puts thing3.object_id # => 5
puts thing4 # => 1
puts thing4.object_id # => 3