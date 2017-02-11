# n & k are integers written in one line and space separated (this is the input)
# next you have to write n integers in separate lines which will be added to an array
# for each element from this array program checks if this element is divisible by k
# the output is the count of elements from an array which are divisible by k
n, k = gets.chomp.split(" ")
n = n.to_i
k = k.to_i
t = []
n.times do
 t << gets.chomp.to_i
end

output = 0
t.each do |ti|
  output += 1 if ti % k == 0
end

puts output
