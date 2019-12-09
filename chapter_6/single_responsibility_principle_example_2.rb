class User < ApplicationRecord
end

class License
  def initialize(user)
    @user = user
  end

  def trail?
    @user.trail_end_date <= Date.today
  end
end
