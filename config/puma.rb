# frozen_string_literal: true

max_threads_count = ENV.fetch('RAILS_MAX_THREADS', 5)
min_threads_count = ENV.fetch('RAILS_MIN_THREADS') { max_threads_count }
threads min_threads_count, max_threads_count

# Set worker timeout based on the environment
if ENV.fetch('RAILS_ENV', 'development') == 'production'
  worker_timeout 60
else
  worker_timeout 3600 # or another suitable value for development
end

# Bind to a Unix socket for production; use port for development
if ENV.fetch('RAILS_ENV', 'development') == 'production'
  bind "unix:///home/ubuntu/apps/zomato/shared/tmp/sockets/puma.sock"
else
  port ENV.fetch('PORT', 3000)
end

environment ENV.fetch('RAILS_ENV', 'development')

pidfile ENV.fetch('PIDFILE', 'tmp/pids/server.pid')

# Configure workers for production; typically not used in development
if ENV.fetch('RAILS_ENV', 'development') == 'production'
  workers ENV.fetch("WEB_CONCURRENCY") { 2 }
  preload_app!
end

plugin :tmp_restart
