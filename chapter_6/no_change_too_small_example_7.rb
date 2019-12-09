class Address
  attr_accessor :street, :zip

  def initialize(street, zip)
    @street = street
    @zip = zip
  end
end

class AddressCleaner
  def initialize(addresses)
    @addresses = addresses
  end

  def clean
    remove_nil_zips
    sort_by_zip
  end

  private

  def remove_nil_zips
    @addresses.reject! { |address| address.zip.nil? }
  end

  def sort_by_zip
    @addresses.sort_by { |address| address.zip }
  end
end

address1 = Address.new("123 Street", 12345)
address2 = Address.new("321 Street", nil)

address_cleaner = AddressCleaner.new([address1, address2])
addresses = address_cleaner.clean
