# A program which writes the input until input is 42
# example:
# 5
# 4
# 42
# 88
# output:
# 5
# 4
until (num = gets.chomp) == "42"
  puts num
end
