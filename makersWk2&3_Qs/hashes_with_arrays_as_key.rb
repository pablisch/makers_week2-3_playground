### Based on a scrabble problem from Makers' PreCourse Q8_1

POINTS = {
  [" "] => 0,
  ["E", "A", "I", "O", "N", "R", "T", "L", "S", "U"] => 1,
  ["D", "G"] => 2,
  ["B", "C", "M", "P"] => 3,
  ["F", "H", "V", "W", "Y"] => 4,
  ["K"] => 5,
  ["J", "X"] => 8,
  ["Q", "Z"] => 10
}

VALUES = { " " => 0, "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1,"N" => 1, "R" => 1, "S" => 1, "T" => 1, "D" => 2, "G" => 2, "B" => 3, "C" => 3,"M" => 3, "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4, "K" => 5,"J" => 8, "X" => 8, "Q" => 10, "Z" => 10 }

word = "pod"

# *** The simple dictionary way which might be the best performing ***
print "Using the dictionary basic way: " 
puts word.upcase.split("").map { |letter| VALUES[letter] }.sum

# *** Mostly untouched method from Sunny ***
counter = 0
score = 0
numbers = []
word_array = word.upcase.split("")
while counter < word_array.length
  POINTS.each do |letter, score|
    if letter.include?(word_array[counter]) == true
      numbers.push(score)
    end
  end
  counter += 1
end
print "Using Sunny's way, barely adapted: " 
puts numbers.reduce(:+)

# *** My first natural iteration using the each method ***
score = 0
word.upcase.split("").each do |letter|
  POINTS.each { |letter_group, value| score += value if letter_group.include?(letter) }
end
print "Using my natural adaptation: " 
puts score

# *** A further iteration to be more concise though not necessarily better ***
score = 0
word.upcase.split("").each { |letter| POINTS.each { |letter_group, value| score += value if letter_group.include?(letter) }}
print "A further concise iteration: " 
puts score

