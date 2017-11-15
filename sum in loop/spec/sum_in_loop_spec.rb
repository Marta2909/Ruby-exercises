require 'sum_in_loop'

describe "sum in loop program" do
  it "should sum two numbers" do
    expect(SumInLoop.new.sum(981474, 169289)).to eq 1150763
  end

  it "should take the first line as a test cases count(n) and the next n lines as a separate test cases" do
    expect(SumInLoop.new.run([3, 100, 8, 15, 245, 1945, 54])).to eq "108 260 1999"
  end
end
