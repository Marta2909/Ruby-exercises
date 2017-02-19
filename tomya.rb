test_cases = gets.chomp.to_i
prices = [1, 2, 4, 8, 16, 32, 64, 128, 256, 1024, 2048]
rest = []
sum = []

test_cases.times do
  money = gets.chomp.to_i
  how_many = 0

  #if money > 2048 there is minimum 1 element of the sum
  while money > 2048
    money = money - 2048
    how_many += 1
  end

  #if money < 2048 I'll change it to binary representation and sum the "1" there because prices array consist of 2**0 to 2**10 values
  #change from decimal to binary representation of money
  while money >= 1
    rest << money%2
    money /= 2
  end

  rest.each do |count|
    how_many += count #how_many points at the sum of 1 in binary representation of money
  end

  # the sum points at the solution in every case
  sum << how_many
  rest.clear
end

puts sum

#the price array contains the prizes in the menu
#money points at the money which has Tomya
#the task is to find minimal amount of dishes from the menu, which costs exactly the given money (no more no less)
#example: money = 10, the result is 2 (2 + 8)
#example: money = 64, the result is 1 (64)
#example: money = 52, the result is 3 (4 + 16 + 32)
