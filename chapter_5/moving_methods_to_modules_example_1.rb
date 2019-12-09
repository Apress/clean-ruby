class BankAccount
  def initialize(balance, interest_rate)
    @balance = balance
    @interest = interest_rate
  end

  def add_to_balance(amount)
    @balance = add(@balance, amount)
  end

  def calculate_interest
    multiply(@balance, @interest_rate)
  end

  private
  def add(a, b)
    a + b
  end

  def multiply(a, b)
    a * b
  end
end
