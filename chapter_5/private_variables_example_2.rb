class BankAccount
  def initialize(starting_balance)
    @balance = starting_balance
  end

  def display_balance
    format_for_display
  end

  private
  def format_for_display
    "Account Balance: #{@balance}"
  end
end
