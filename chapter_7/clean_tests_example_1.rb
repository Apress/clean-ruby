class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end
end

RSpec.describe Calculator do
  it "returns added value" do
    c = Calculator.new
    expect(c.add(2,2)).to eq(4)
  end

  it "returns subtracted value" do
    c = Calculator.new
    expect(c.subtract(2,2)).to eq(4)
  end
end
