def log_to_console(message, level = :info)
  puts "#{level.to_s.upcase}: #{message}"
end


log_to_console('A message', :warn)
log_to_console('Another message', :anything_we_want)
log_to_console('Another message')
