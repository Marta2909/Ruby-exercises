class SumInLoop
  def run(args)
    result = ""
    test_cases_number = args.first.to_i
    args.shift
    test_cases_number.times do
      mini_result = sum args[0].to_i, args[1].to_i
      result = result + mini_result.to_s + " "
      args.shift
      args.shift
    end
    result.chomp(" ")
  end
  def sum a, b
    a + b
  end
end
