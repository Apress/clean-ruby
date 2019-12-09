def create_user(first_name, last_name)
  if first_name.nil? || first_name == ""
    raise ArgumentError, 'first_name is required'
  end

  if last_name.nil? || first_name == ""
    raise ArgumentError, 'first_name is required'
  end

  User.create(
    first_name: first_name,
    last_name: last_name
  )
end
