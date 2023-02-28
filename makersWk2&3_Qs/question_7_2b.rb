# Write a program that puts people into groups.  It should:
# * Ask the user to enter the number of groups they want to create.
# * Ask for people's names, one at a time, until the user enters `stop`.
# * Grouping strategy
#   * As an example, imagine there are three groups.
#   * First person goes in the first group.
#   * Second person goes in the second group.
#   * Third person goes in the third group.
#   * Fourth person goes in the first group.
#   * Fifth person goes in the second group.
#   * etc.
# * Ask the user for the number of a group.
# * Print the people in that group, each separated by a comma and a
#   space.  Group numbers are "1-indexed".  This means that, if the
#   user enters `1`, the first group should be printed, not the second
#   group.
# * Keep on asking the user for group numbers until the user enters
#   `stop`.
#
# * Example output
#   ```
#   Enter number of groups
#   3
#   Enter a name
#   Mary
#   Enter a name
#   Lauren
#   Enter a name
#   Awad
#   Enter a name
#   Govind
#   Enter a name
#   Isla
#   Enter a name
#   stop
#   Enter the number of a group to print out
#   1
#   Mary, Govind
#   Enter the number of a group to print out
#   2
#   Lauren, Isla
#   Enter the number of a group to print out
#   3
#   Awad
#   Enter the number of a group to print out
#   stop
#   ```
#
# * Note: You can assume the user will input an integer when asked how
#   many groups they want to create.  You can assume the user will
#   input integers for group numbers that exist when they are asked
#   for the number of a group to print out.

puts "Enter number of groups"
group_num = gets.chomp.to_i  # user input num of groups
groups = Array.new(group_num) { [] }  # creates an array with that number of sub-arrays, i.e. if groups = 3 => [[], [], []]
people = []  # creates an empty array of people

while true do
  puts "Enter a name"
  name = gets.chomp
  break if name == "stop"  # user input names one by one until user inputs 'stop'

  people << name  # each name is passed into an array
end

people.each_with_index do |person, index|
  groups[(index + group_num) % group_num] << person  # pushes each person into the right sub-array, simplified: group[index] << person
  # the index is: ( index + number_of_groups ) modulo number_of_groups
  # this is because the first one, e.g. for three groups, will be (0 + 3) % 3 = 0, then the next 1, then 2 and then back to 0
  # so it cycles through the three subarray indexes putting one in each until it runs out of names.
  # the original (... + number of groups ) is needed to raise the inital number high enough to be divided by number of groups.
end

while true do
  puts "Enter the number of a group to print out"
  group_selection = gets.chomp  # user input to choose which group
  break if group_selection == "stop"  # break when user chooses 'stop'
  
  puts groups[group_selection.to_i - 1].join(", ") unless group_selection.to_i > group_num
  # puts groups (the nested array of grouped names) the index of groups selection -1 (for index 0 start) joined with a comma and space.
end
