class Address
  attr_accessor :street, :zip

  def initialize(street, zip)
    @street = street
    @zip = zip
  end
end

address1 = Address.new("123 Street", 12345)
address2 = Address.new("321 Street", nil)

def prepare_addresses(addresses)
  remove_nil_zips(addresses)
  sort_by_zip(addresses)
end

def remove_nil_zips(addresses)
  addresses.reject! { |address| address.zip.nil? }
end

def sort_by_zip(addresses)
  addresses.sort_by { |address| address.zip }
end

prepare_addresses([address1, address2])
