class Accountant
  def file_taxes
  end
end


class SuperMarket
  def initialize(accountant)
    @accountant = accountant
  end
end

class ToyStore
  def initialize(accountant)
    @accountant = accountant
  end
end

accountant = Accountant.new
toy_store = ToyStore.new(accountant)
super_market = SuperMarket.new(accountant)
