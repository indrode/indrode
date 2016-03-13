if Rails.env == 'production'
  environment 'production'
  daemonize true

  pidfile '/home/akira/indrode/shared/tmp/pids/puma.pid'
  state_path '/home/akira/indrode/shared/tmp/pids/puma.state'

  threads 0, 16
  bind 'unix:///home/akira/indrode/shared/tmp/sockets/puma.sock'

  on_worker_boot do
    ActiveRecord::Base.establish_connection
  end
end
