arr1 = %w[a, e, i, o, u, n, r, t, l, s]
arr2 = %w[d, g]
arr3 = %w[b, c, m, p]

HASH = {arr1 => 1, arr2 => 2, arr3 => 3}
VALUES = { " " => 0, "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1,"N" => 1, "R" => 1, "S" => 1, "T" => 1, "D" => 2, "G" => 2, "B" => 3, "C" => 3,"M" => 3, "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4, "K" => 5,"J" => 8, "X" => 8, "Q" => 10, "Z" => 10 }

word = "pod"

p word.upcase.split("").map { |letter| VALUES[letter] }.sum