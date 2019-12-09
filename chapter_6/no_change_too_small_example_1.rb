class Address
  attr_accessor :street, :zip

  def initialize(street, zip)
    @street = street
    @zip = zip
  end
end

a1 = Address.new("123 Street", 12345)
a2 = Address.new("321 Street", nil)

def prep(a_list)
  # remove addresses with no zip
  a_list.reject! { |a| a.zip.nil? }

  # sort addresses by zip
  a_list.sort_by { |a| a.zip }
end

s_list = prep([a1, a2])
