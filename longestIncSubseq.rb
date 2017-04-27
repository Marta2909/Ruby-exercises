longest_incr_subseq = []
longest_incr_subseq_array = []
i = 0
digits = []

#puts "Podaj liczbę testów"
test_cases = gets.chomp.to_i
#puts "Liczba testów: #{test_cases}"
test_cases.times do |num|
#  puts "Podaj długość liczby wejściowej"
  number_of_digits = gets.chomp.to_i
#  puts "Najdłuższa rosnąca podsekwencja nr #{num}: #{number_of_digits}"
  while i < number_of_digits
    longest_incr_subseq << gets.chomp.to_i
    i+=1
  end
#  puts "Liczba nr #{num}: #{longest_incr_subseq.inspect}"
  longest_incr_subseq_array << longest_incr_subseq
  i = 0
  start_number = ""
  longest_incr_subseq.each do |digit|
    start_number += digit.to_s
  end
  puts start_number.to_i
  longest_incr_subseq = []
end

longest_incr_subseq_array.each do |element|
  digits.clear
  if element[0] != 1
    puts "Nie ma takiej liczby"
  elsif element.length == 1
    digits << rand(0..9)
  elsif element.length == 2 && element[-1] == 1
    digits << rand(0..9)
    digits << rand(0..digits[-1])
  elsif element.length == 2 && element[-1] == 2
    digits << rand(0..9)
    nd = digits[-1]+1
    digits << rand(nd..9)

    ## cała ten elsif musi zostać powrótrzony jeśli w którymkolwiek miejscu tablica digits doda wartość nil - użyć retry
  elsif element.length > 2 && element[0] == 1

      digits << rand(1..9)
      max_digit = min_digit = av_digit = digits[0]
      puts "zero: max_digit: #{max_digit}, min_digit: #{min_digit}, av_digit = #{av_digit}"

  #  for i in 1..element.length
      element[1..element.length].each_index do |i|
        if element[i] < element[i.next] && digits[-1] < 9
          md = max_digit + 1
          if rand(md..9) != nil
          digits << rand(md..9)
          else
            digits.clear
            digits << rand(1..9)
            max_digit = min_digit = av_digit = digits[0]
                  puts "zero: max_digit: #{max_digit}, min_digit: #{min_digit}, av_digit = #{av_digit}"
            i=0
            element.length.times do
              redo
            end
        #    digits << 9
          end
          max_digit = digits[-1]
          puts "#{i}: i=#{i}, i.next=#{i.next}, #{digits}  max_digit: #{max_digit}, min_digit: #{min_digit}, av_digit = #{av_digit}"
        elsif element[i] < element[i.next] && digits[-1] == 9
          digits << 9
          max_digit = 9
        elsif element[i] == element[i.next]
          ad = av_digit+1
          digits << rand(ad..max_digit)
                                     redo if digits.include?("nil")
          av_digit = digits[-1]
         puts "#{i}: i=#{i}, i.next=#{i.next}, #{digits}  max_digit: #{max_digit}, min_digit: #{min_digit}, av_digit = #{av_digit}"
        elsif element[i] > element[i.next] && element[i] != 1
          e = element[i]
          if rand(min_digit..e) != nil
            digits << rand(min_digit..e)
                                                redo if digits.include?("nil")
          end
          if rand(min_digit..e) == nil
            digits << 1
          end
          min_digit = digits[-1]
         puts "#{i}: i=#{i}, i.next=#{i.next}, #{e} #{digits}  max_digit: #{max_digit}, min_digit: #{min_digit}, av_digit = #{av_digit}"
        elsif element[i] > element[i.next] && element[i] == 1
          e = element[i]
          digits << rand(0..min_digit)
            redo if digits.include?("nil")
          min_digit = digits[-1]
          puts "#{i}: i=#{i}, i.next=#{i.next}, #{digits}  max_digit: #{max_digit}, min_digit: #{min_digit}, av_digit = #{av_digit}"
        else
          redo
        end
      end

  end
    end_number = ""
    unless digits.include?(nil)
      digits.each do |digit|
        end_number += digit.to_s
      end
      puts end_number.to_i
#    else
#      puts "Nie ma takiej liczby"
   end
end
