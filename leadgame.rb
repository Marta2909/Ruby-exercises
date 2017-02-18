num_of_rounds = gets.chomp.to_i
max_lead = 0
winner = 0
lead = 0
score1 = 0
score2 = 0
num_of_rounds.times do
  scores = gets.split(" ").map(&:to_i)
  score1 += scores[0]
  score2 += scores[1]
  lead = (score1-score2).abs
  if lead > max_lead
    max_lead = lead
    winner = score1 > score2 ? 1 : 2
  end
end

puts "#{winner} #{max_lead}"
