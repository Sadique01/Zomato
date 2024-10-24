# config valid for current version and patch releases of Capistrano
lock "~> 3.19.1"

set :application, "zomato"
set :repo_url, "git@github.com:Sadique01/Zomato.git"
set :user,    'deploy'

set :branch, :master
set :deploy_to, '/home/deploy/zomato'
set :pty, true
set :use_sudo, true
set :linked_files, %w{config/database.yml config/application.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
set :keep_releases, 5
set :rvm_type, :userdeploy_todeploy_todeploy_todeploy_to
set :rvm_ruby_version, 'ruby-3.2.2' # Edit this if you are using MRI Ruby

set :puma_rackup, -> { File.join(current_path, 'config.ru') }
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_bind, "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"    #accept array for multi-bind
set :puma_conf, "#{shared_path}/puma.rb"
set :puma_access_log, "#{shared_path}/log/puma_error.log"
set :puma_error_log, "#{shared_path}/log/puma_access.log" 
set :puma_role, :app
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :puma_threads, [0, 8]
set :puma_workers, 0
set :puma_worker_timeout, nil
set :puma_init_active_record, true
set :puma_preload_app, true
set :tmp_dir, "/home/#{fetch(:user)}/#{fetch(:application)}/tmp"


# namespace :puma do
#     desc 'Create Directories for Puma Pids and Socket'
#     task :make_dirs do
#       on roles(:app) do
#         execute "mkdir #{shared_path}/tmp/sockets -p"
#         execute "mkdir #{shared_path}/tmp/pids -p"
  
#         Rake::Task['puma:start'].clear_actions
#       end
#     end
#     before :start, :make_dirs
#   end