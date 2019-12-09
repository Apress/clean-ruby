class User
  attr_accessor :id, :name

  def initialize(id, name)
    self.id = id
    self.name = name
  end
end

def find_by_name(users, name)
  users.each do |user|
    if user.name == name
      return user
    end
  end

  return { message: "Unable to find user with name #{name}" }
end

users = []
users << User.new(1, "Alice")
users << User.new(2, "Joe")

user = find_by_name(users, "Jane")
if user.is_a?(Hash) && !user[:message].nil?
  puts user[:message]
else
  puts user.id
end
