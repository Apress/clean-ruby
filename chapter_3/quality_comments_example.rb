def change_role(user_id, new_role)
  user = User.find(user_id)

  role_service = RoleService.new(user)

  # Roles cannot be downgraded so the role service will
  # return false if the new role is 'less' then the
  # current role
  return unless role_service.can_assign(new_role)


  if user.role != new_role
    user.role = new_role
  end
end
