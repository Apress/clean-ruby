class Address
  def initialize(street, street2, city, state, zipcode)
    @street = street
    @street2 = street2
    @city = city
    @state = state
    @zipcode = zipcode
  end
end

class Property
  def initialize(address)
    @address = address
  end
end
