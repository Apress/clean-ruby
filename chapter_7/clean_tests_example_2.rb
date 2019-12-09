class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end
end

RSpec.describe Calculator do
  context '#add' do
    it "returns sum of two values" do
      expected = 4
      actual = subject.add(2, 2)
      expect(actual).to eq(expected)
    end
  end

  context '#subtract' do
    it "returns difference of two values" do
      expected = 1
      actual = subject.subtract(3, 2)
      expect(actual).to eq(expected)
    end
  end
end

