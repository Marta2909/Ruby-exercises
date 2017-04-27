no_of_numbers = gets.chomp.to_i
cases = []

until no_of_numbers == 0
  number = gets.chomp.split(" ").map(&:to_i)
  numbers = []

  no_of_numbers.times do |i|
    numbers << number[i]
  end

  cases << numbers

  no_of_numbers = gets.chomp.to_i
end

#puts cases.inspect

cases.each do |cas|
  sorted_numbers = cas.sort

  #puts "numbers: #{numbers.inspect}"
  #puts "sorted numbers: #{sorted_numbers.inspect}"

  inverse = cas[1..(cas.length-1)].reverse == sorted_numbers[1..(sorted_numbers.length-1)]

  if cas[0] == sorted_numbers[0] &&  inverse == true
    puts "ambiguous"
  else
    puts "not ambiguous"
  end
end
