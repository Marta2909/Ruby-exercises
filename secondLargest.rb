gets.to_i.times do
  line = gets.chomp
  numbers = line.split(" ").map { |n| n.to_i }.sort.reverse
  puts numbers[1]
end
