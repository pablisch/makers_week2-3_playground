def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
          "eight", "nine", "ten",
          "jack", "queen", "king", "ace"]

  cards[rand(13)]
end

hand = ["two", "three", "four", "five", "six", "seven",
  "eight", "nine", "ten",
  "jack", "queen", "king", "ace"]

VALUES = {
  "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6,
  "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10, "jack" => 10,
  "queen" => 10, "king" => 10, "ace" => 11 }

def score(hand)
  total = []
  hand.each { |card| total << VALUES[card] }
  total.sum
end

def move
  puts "Hit or stick?"
  choice = gets.chomp
  if choice == "hit" 
    return "hit"
  elsif choice == "stick"
    return "stick"
  else
    move
  end
end

def run_game
  hand = []
  while true do
    if move == "stick"
      break
    else
      hand << random_card
      puts "Score so far: #{score(hand)}"
    end
  end
  final_total = score(hand)
  puts final_total > 21 ? "You busted with: #{final_total}" : "You scored: #{final_total}"
end

run_game