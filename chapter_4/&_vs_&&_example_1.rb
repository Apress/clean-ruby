class User
  attr_accessor :type

  def initialize(type)
    @type = type
  end
end

first_user = User.new(:regular)
second_user = nil

if first_user.type == :admin & second_user.type == :admin
  puts 'Both users are an admin'
else
  puts 'Both users are not admin'
end
