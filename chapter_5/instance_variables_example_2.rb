require 'date'

class WelcomeMailer
  def self.send(email)
    puts "Sending welcome email to #{email}..."
  end
end

class User
  attr_accessor :email, :subscription_expired_at

  def initialize(email)
    @email = email
    @subscription_expired_at = DateTime.now
  end

  def login
    puts "Logging #{@email} in..."
  end
end


class UserSetup
  def initialize(user)
    @user = user
  end

  def start_trial
    @user.subscription_expired_at = DateTime.now + 30
  end

  def send_welcome_email
    WelcomeMailer.send(@user.email)
  end

  def login
    @user.login
  end
end

user = User.new('test@tester.com')
user_setup = UserSetup.new(user)
user_setup.start_trial
user_setup.send_welcome_email
user_setup.login
