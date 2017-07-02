gets.to_i.times do
  number = gets.chomp.to_i
  factorial = 1
  1.upto(number) do |i|
    factorial *= i
  end
  puts factorial
end
