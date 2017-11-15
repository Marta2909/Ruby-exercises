require "min_of_two"

describe "Min of two program" do
  it "should point the minimum of two numbers" do
    expect(MinOfTwo.new.min(2,8)).to eq 2
  end
  it "should point the minimum of all inputted numbers pairs" do
    expect(MinOfTwo.new.minimum([3, 5, 3, 2, 8, 100, 15])).to eq "3 2 15"
  end
end
