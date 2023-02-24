# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

def fibonacci(sequence_length)
  sequence = [0, 1]
  (sequence_length - 2).times { |index| sequence << sequence[index, 2].sum }
  sequence.each { |item| puts item }
end

fibonacci(20)

# def fibonacci(number)
#   sequence = [0, 1]
#   until sequence.length == number do
#     sequence.push(sequence[-1] + sequence[-2])
#   end
#   puts sequence
# end

# fibonacci(3)