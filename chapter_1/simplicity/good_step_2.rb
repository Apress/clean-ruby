def log_to_console(message, level)
  puts "#{level}: " + message
end

log_to_console('A message', :warn)
