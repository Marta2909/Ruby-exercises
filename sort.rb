numbers_count = gets.chomp.to_i
numbers = []

numbers_count.times do
  numbers << gets.chomp.to_i
end

puts numbers.sort
