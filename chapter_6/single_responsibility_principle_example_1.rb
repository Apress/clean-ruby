class User < ApplicationRecord
  def trail_user?
    self.trail_end_date <= Date.today
  end
end
