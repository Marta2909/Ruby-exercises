T = gets.chomp.to_i
test_case = []

T.times do
  test_case << gets.chomp
end

test_case.each do |tc|
  tc = tc.split(" ").map { |e| e.to_i }.to_a
  no_of_igredients = tc.first
  igredients = tc[1..no_of_igredients]
  max_igredient = igredients.max
  while max_igredient > 1
    if igredients.all? { |i| i % max_igredient == 0 }
      igredients = igredients.map { |i| i / max_igredient }
      max_igredient = igredients.max
    else
      max_igredient = max_igredient-1
    end
  end
  puts igredients.join(" ")
end
