def accounts_from_file(file_path)
  # read lines from file
  file = File.new(file_path)
  lines = file.readlines

  # Create an account for each line
  accounts = lines.collect do |line|
    # Parse name and email
    account_info = line.parse(',')
    name = account_info[0]
    email = account_info[1]

    # Create an account using the parsed data
    Account.create(name: name, email: email)
  end
end
