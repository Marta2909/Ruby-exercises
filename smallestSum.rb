T = gets.chomp.to_i

T.times do
  validNumbers = gets.chomp.to_i
  input = gets.chomp.split(" ").to_a.map { |number| number.to_i}
  input = input[0..validNumbers-1].sort!
  minSum = input[0] + input[1]
  puts minSum
end
