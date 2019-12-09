def change_role(user_id, new_role)
  # find a user by id
  user = User.find(user_id)

  # check that current role does not equal the new role
  if user.role != new_role
    # assign new role to the user
    user.role = new_role
  end
  # end of method
end
