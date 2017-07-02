gets.to_i.times do
  amount = gets.chomp.to_i
  sum = 0
  sum += amount/100.to_i
  amount %= 100
  sum += amount/50.to_i
  amount %= 50
  sum += amount/10.to_i
  amount %= 10
  sum += amount/5.to_i
  amount %= 5
  sum += amount/2.to_i
  amount %= 2
  sum += amount/1.to_i
  amount %= 1
  puts sum
end
