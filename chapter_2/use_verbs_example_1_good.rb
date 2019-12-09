class Account
  def initialize(customer)
    @customer = customer
  end

  # Good method
  def pay_bill(amount)
    @customer.balance -= amount
  end
end
