test_cases = gets.chomp.to_i

test_cases.times do
  triangle = []

  # wypełnianie trójkąta
  no_of_rows = gets.chomp.to_i
  no_of_rows.times do
    triangle << gets.chomp.split.map { |s| s.to_i }
  end

  puts triangle.inspect

  for row in 1..(no_of_rows-1)
    triangle[row][0] += triangle[row-1][0]
    triangle[row][row] += triangle[row-1][row-1]
    for k in 1..(row-1)
      triangle[row][k] += [triangle[row-1][k],triangle[row-1][k-1]].max
    end
  end
     puts triangle[no_of_rows-1].max
end
