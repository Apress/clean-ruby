def create_user(first_name, last_name)
  validate_input(first_name, last_name)
  User.create(
    first_name: first_name,
    last_name: last_name
  )
end

def validate_input(first_name, last_name)
  if first_name.nil? || first_name == ""
    raise ArgumentError, 'first_name is required'
  end

  if last_name.nil? || last_name == ""
    raise ArgumentError, 'last_name is required'
  end
end
