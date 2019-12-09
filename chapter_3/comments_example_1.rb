def change_role(user_id, new_role)
  user = User.find(user_id)

  if user.role != new_role
    user.role = new_role
  end
end
