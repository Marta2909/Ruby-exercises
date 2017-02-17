test_cases = gets.chomp.to_i
cases = []

test_cases.times do
  cases << gets.chomp.to_i
end

cases.each do |cas|
  silnia = 1
  cas.times do |t|
    t += 1
    silnia *= t
  end
  puts silnia
end
