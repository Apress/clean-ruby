def log(message, level)
  puts "#{level.to_s.upcase}: #{message}"
end

log("An error occurred", :error)
