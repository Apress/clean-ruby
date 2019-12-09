class Calculator
  def add(a, b)
    a.to_i + b.to_i # turn nil to 0
  end
end

class CalculatorTest
  def should_add_two_values()
    # This is the value we expect to be returned by the add method
    expected = 5

    calc = Calculator.new
    # Call the add method with two values that equal 5
    result = calc.add(3, 2)

    # Check if result equals the expected value
    equal?(result, expected)
  end

  private
  # Test if two values are equal
  def equal?(a, b)
    if a == b
      puts 'PASS'
    else
      puts 'FAILS'
    end
  end
end

tests = CalculatorTest.new
tests.should_add_two_values
