# Write a program that:
# * Calculates the "FizzBuzz sequence" from 1 to 20.
#   * For each integer between 1 and 20 (inclusive).
#     * If the number is divisible by 3, replace the number with `Fizz`.
#     * If the number is divisible by 5, replace the number with `Buzz`
#     * If the number is divisible by 3 and 5, replace the number with
#       `FizzBuzz`.
#     * If the number is divisible by neither 3 or 5, keep the number.
# * `puts`es these "FizzBuzz sequence" entries, one per line.

def fizzbuzz(num)
  i = 1
  until i > num do
    if i % 3 == 0
      if i % 5 == 0
        puts "FizzBuzz"
      else
        puts "Fizz"
      end
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end
    i += 1
  end
end

fizzbuzz(20)

# def fizzbuzz(num)
#   (1..num).to_a.each { |n| puts (n % 3 == 0 && n % 5 == 0) ? "FizzBuzz" :n % 3 == 0 ? "Fizz" : n % 5 == 0 ? "Buzz" : n }
# end

# fizzbuzz(20)

# def fizzbuzz(num)
#   (1..num).to_a.each do |n| 
#     puts (n % 3 == 0 && n % 5 == 0) ? "FizzBuzz" 
#     : n % 3 == 0 ? "Fizz" 
#     : n % 5 == 0 ? "Buzz" : n
#   end
# end

# fizzbuzz(20)

##### ACCEPTED VERSION BELOW!

def fizzbuzz(end_range)
  (1..end_range).to_a.each do |number| 
    puts (number % 3 == 0 && number % 5 == 0) ? "FizzBuzz" 
    : number % 3 == 0 ? "Fizz" 
    : number % 5 == 0 ? "Buzz" 
    : number
  end
end

fizzbuzz(20)