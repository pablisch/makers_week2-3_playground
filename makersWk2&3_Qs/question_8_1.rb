# Write a program that calculates the score for a word in Scrabble.
# It should:
# * Ask the user for a word e.g. `apple`.
# * `puts` the score for the word in Scrabble by totalling the points
#   for each letter in the word.
#   * Points for each letter:
#     * 0 points: blank tile
#     * 1 point: E, A, I, O, N, R, T, L, S, U
#     * 2 points: D, G
#     * 3 points: B, C, M, P
#     * 4 points: F, H, V, W, Y
#     * 5 points: K
#     * 8 points: J, X
#     * 10 points: Q, Z

# * Note: You can assume that the user will enter a word that only
#   contains letters and blanks.  You can assume the word will be in
#   uppercase.

# VALUES = { /[AEIOULNRST]/ => 1, /[DG]/ => 2, /[BCMP]/ => 3, /[FHVWY]/ => 4,
#   /K/ => 5, /[JX]/ => 8, /[QZ]/ => 10 }
# score = 0

# puts "Enter a word"
# word = gets.chomp.upcase

# VALUES.each { |letter, value| score += (word.scan(letter).count * value) }
# puts score

# VALUES = { " " => 0, "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1,
#   "N" => 1, "R" => 1, "S" => 1, "T" => 1, "D" => 2, "G" => 2, "B" => 3, "C" => 3,
#   "M" => 3, "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4, "K" => 5,
#   "J" => 8, "X" => 8, "Q" => 10, "Z" => 10,
# }
# score = 0

# puts "Enter a word"
# gets.chomp.upcase.split("").each { |letter| score += VALUES[letter] }
# puts score

VALUES = { " " => 0, "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1,
  "N" => 1, "R" => 1, "S" => 1, "T" => 1, "D" => 2, "G" => 2, "B" => 3, "C" => 3,
  "M" => 3, "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4, "K" => 5,
  "J" => 8, "X" => 8, "Q" => 10, "Z" => 10,
}
score = 0

puts "Enter a word"
word = gets.chomp.upcase

word.split("").each { |letter| score += VALUES[letter] }
puts score

