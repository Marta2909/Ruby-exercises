# the program counts how many digits "4" is in the written number
T = gets.chomp.to_i
numbers = []

T.times do
  numbers << gets.chomp
end

numbers.each do |number|
  chars = number.chars.to_a
  sum = 0
  chars.each do |ch|
    if ch == "4"
      sum += 1
    end
  end
  puts sum
end
