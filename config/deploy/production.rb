server '51.20.239.21', port: 22, user: 'deploy', roles: %w{web app db}, primary: true
set :production
set :branch, 'master'
set :repo_url, "git@github.com:Sadique01/Zomato.git"
set :puma_env, 'production'