def log_to_console(args)
  if args.length > 1
    if args[1] == 'warn'
      puts 'WARN: ' + args[0]
    elsif args[1] == 'error'
      puts 'ERROR: ' + args[0]
    else
      puts args[0]
    end
  end
end

args = ['A message', 'warn']
log_to_console(args)
