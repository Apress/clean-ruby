class BankAccount
  def initialize(number)
    @number = number
    external_account = ExternalBankAccount.new

    external_account.load_balances(@number)
    external_account.sync_transactions
  end
end

bank_account = BankAccount.new("1234")
