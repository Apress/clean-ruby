class Calculator
  def add(a, b)
    a + b # The most simple way to make our test pass
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

  # This method should be added to our CalculatorTest class
  def should_add_two_nil_values
    # We need to decide what we expect the result of nil + nil is
    expected = 0

    calc = Calculator.new
    result = calc.add(nil, nil)

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
tests.should_add_two_nil_values
