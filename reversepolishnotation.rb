test_cases = gets.chomp.to_i
cases = []

test_cases.times do
  cases << gets.chomp
end

cases.each do |cas|
  char_array = cas.chars
  char_array.delete("(")
  char_array.delete(")")
  puts char_array.partition { |ch| ("a".."z").include?(ch) }
#  puts char_array.inspect
end
