class BankAccount
  def initialize(number)
    raise ArgumentError, 'number cannot be nil' if number.nil?
    @number = number
  end
end
