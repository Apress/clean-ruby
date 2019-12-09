def accounts_from_file(file_path)
  lines = read_file(file_path)
  create_accounts(lines)
end


def read_file(file_path)
  file = File.new(file_path)
  file.readlines
end

def create_accounts(lines)
  accounts = lines.collect do |line|
    account_params = account_params_from_line(line)
    Account.create(account_params)
  end
end

def account_params_from_line(line)
  account_info = line.parse(',')
  { name: account_info[0], email: account_info[1] }
end
