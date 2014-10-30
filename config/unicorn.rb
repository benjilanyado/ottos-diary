worker_processes Integer(ENV["WEB_CONCURRENCY"] || 5)
timeout 15
preload_app true

before_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
    
  if defined?(Resque)
    Resque.redis.quit
    Rails.logger.info('Disconnected from Redis')
  end
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection(
      Rails.application.config.database_configuration[Rails.env]
    )
    
  if defined?(Resque)
    Resque.redis = ENV['REDISTOGO_URL'] || "redis://127.0.0.1:6379"
    Rails.logger.info('Connected to Redis')
    $redis.client.reconnect
  end
end
