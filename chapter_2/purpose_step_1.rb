class UserSetup
  def initialize(user)
    @user = user
  end

  def execute
    add_coins

    send_welcome
  end

  private
  def add_coins
    # add coins to their account
  end

  def send_welcome
    email = @user.email
    # send an email
  end
end

user_setup = UserSetup.new(user)
user_setup.execute
