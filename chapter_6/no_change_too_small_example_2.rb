class Address
  attr_accessor :street, :zip

  def initialize(street, zip)
    @street = street
    @zip = zip
  end
end

address1 = Address.new("123 Street", 12345)
address2 = Address.new("321 Street", nil)

def prep(addresses)
  # remove addresses with no zip
  addresses.reject! { |address| address.zip.nil? }

  # sort addresses by zip
  addresses.sort_by { |address| address.zip }
end

addresses = prep([address1, address2])
