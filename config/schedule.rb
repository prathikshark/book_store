set :output, '/Users/prkoteshwara/book_store/log/cron_log.log'

every 1.minute do
    runner "puts 'HELLO WORLD'"
    rake 'batch:send_text'
end