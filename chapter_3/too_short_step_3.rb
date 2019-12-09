# Single Line
def qualified_users
  User.where(active: true)
    .select(&:qualified?)
    .sort(&:last_login)
end
