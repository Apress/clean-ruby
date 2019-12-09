def log(message, level)
  if level.to_s == 'warning'
    puts "WARN: #{message}"
  elsif level.to_s == 'error'
    puts "ERROR: #{message}"
  end
end

log("An error occurred", :error)
