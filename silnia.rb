# wpisywanie liczby przypadków i każdego przypadku
test_cases = gets.chomp.to_i
cases = []

test_cases.times do
  cases << gets.chomp.to_i
end

#dla każdego przypadku oblicza liczbe zer na końcu silni i ją podaje
cases.each do |cas|
  count = 0
  while (div = cas/=5) > 0
    count += div
  end
  puts "Liczba zer czyli wartość funkcji Z = #{count}"
end
