T = gets.chomp.to_i
numbers = []

T.times do
  numbers << gets.chomp
end

numbers.each do |number|
  digits = number.split("").to_a
  firstDigit = digits.first.to_i
  lastDigit =digits.last.to_i
  puts firstDigit + lastDigit
end
