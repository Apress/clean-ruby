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
  def start_trial(user)
    user.subscription_expired_at = DateTime.now + 30
  end

  def send_welcome_email(user)
    WelcomeMailer.send(user.email)
  end

  def login(user)
    user.login
  end

end

user = User.new('test@tester.com')
user_setup = UserSetup.new
user_setup.start_trial(user)
user_setup.send_welcome_email(user)
user_setup.login(user)
