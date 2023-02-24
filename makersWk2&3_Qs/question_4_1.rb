# Write a program that:
# * Calculates the "FizzBuzz sequence" from 1 to 20.
#   * For each integer between 1 and 20 (inclusive).
#     * If the number is divisible by 3, replace the number with `Fizz`.
#     * If the number is divisible by 5, replace the number with `Buzz`
#     * If the number is divisible by 3 and 5, replace the number with
#       `FizzBuzz`.
#     * If the number is divisible by neither 3 or 5, keep the number.
# * `puts`es these "FizzBuzz sequence" entries, one per line.

def fizzbuzz(end_range)
  (1..end_range).to_a.each do |number| 
    puts (number % 3 == 0 && number % 5 == 0) ? "FizzBuzz" 
    : number % 3 == 0 ? "Fizz" 
    : number % 5 == 0 ? "Buzz" 
    : number
  end
end

fizzbuzz(20)