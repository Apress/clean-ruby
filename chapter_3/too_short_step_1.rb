# Multiple Lines
def qualified_users
  active_users = User.where(active: true)
  qualified_users = active_users.select(&:qualified?)
  qualified_users.sort(&:last_login)
end
