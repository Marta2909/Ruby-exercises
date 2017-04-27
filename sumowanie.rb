test_cases = gets.chomp.to_i
sums = []
sum = 0
test_cases.times do
  a, b = gets.chomp.split(" ").map {|s| s.to_i}
  sum = a + b
  sums << sum
end

puts sums
