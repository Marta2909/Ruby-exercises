class MinOfTwo
  def minimum(args)
    result = ""
    test_cases_number = args.first.to_i
    args.shift
    test_cases_number.times do
      minimal = min args[0].to_i, args[1].to_i
      result = result + minimal.to_s + " "
      args.shift
      args.shift
    end
    result.chomp(" ")
  end
  def min(arg1, arg2)
    if arg1 < arg2
      arg1
    else
      arg2
    end
  end
end
