def random_card
  cards = ["two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "jack", "queen", "king","ace"]
  cards[rand(13)]
end

VALUES = {
  "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6,
  "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10, "jack" => 10,
  "queen" => 10, "king" => 10, "ace" => 11 }

hand = []

def score(hand)
  hand << VALUES[random_card]
  hand
end

def move
  puts "Hit or stick?"
  choice = gets.chomp
  return choice if choice == "hit" || choice == "stick"
  move
end

def run_game(hand)
  while true do
    if move == "stick"
      break
    else
      score(hand)
      puts "Score so far: #{hand.sum}"
    end
  end
  puts hand.sum > 21 ? "You busted with: #{hand.sum}" : "You scored: #{hand.sum}"
end

run_game(hand)




