def log_to_console(message, level = :info)
  if level == :warn
    puts 'WARN: ' + message
  elsif level == error
    puts 'ERROR: ' + message
  else
    puts message
  end
end

log_to_console('A message', :warn)
