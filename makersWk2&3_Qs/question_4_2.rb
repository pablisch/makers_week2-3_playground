# Write a program that adds together all the integers from `1` to
# `250` (inclusive) and `puts`es the total.

def sum_range(num1, num2)
  (num1..num2).to_a.inject(&:+)
end

puts sum_range(1, 250)

# def sumrange(num1, num2)
#   total = 0
#   until num1 > num2
#     total += num1
#     num1 += 1
#   end
#   total
# end

# puts sumrange(1, 250)
