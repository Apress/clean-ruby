class User
  attr_accessor :friends

  def remove_friend!(friend)
    @friends.delete(friend)
  end
end

numbers = [2,3,1]
numbers.sort! # <= This will sort the numbers array
numbers = [2,3,1]
new_numbers = numbers.sort # <= new_numbers will contain the sorted copy of numbers
