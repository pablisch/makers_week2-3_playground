def fizzbuzz(num1, num2)
  (num1..num2).to_a.each { |num| puts (num % 3 == 0 and num % 5 == 0) ? "fizzbuzz" : num % 3 == 0 ? "fizz" : num % 5 == 0 ? "buzz" : num }
end

fizzbuzz(1, 50)
