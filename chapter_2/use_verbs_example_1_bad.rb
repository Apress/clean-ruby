class Account
  def initialize(customer)
    @customer = customer
  end

  # Bad method
  def money(amount)
    @customer.balance -= amount
  end
end
