test_cases = gets.chomp.to_i
numbers = []
sums = []
test_cases.times { numbers << gets.chomp }

numbers.each do |number|
  sum = 0
  number.chars.each { |chr| sum += chr.to_i }
  sums << sum
end

puts sums
