def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
           "eight", "nine", "ten",
           "jack", "queen", "king", "ace"]

  cards[rand(13)]
end

def move
  puts "Hit or stick?"
  while true
    choice = gets.chomp
    return choice if choice == "hit" or choice == "stick"
  end
end

def score(hand)
  values = {
  "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7,
  "eight" => 8, "nine" => 9, "ten" => 10, "jack" => 10, "queen" => 10, "king" => 10,
  "ace" => 11
  }
  hand.collect { |string_value| values[string_value] }.sum
end

def run_game
  hand = []
  while true
    if move == "stick"
      break
    else
      hand << random_card
      puts "Score so far: #{score(hand)}"
    end
  end
  total = score(hand)
  if total <= 21
    puts "You scored: #{total}"
  else
    puts "You busted with: #{total}"
  end
end

run_game