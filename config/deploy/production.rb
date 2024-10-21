server '51.20.239.21', user: 'deploy', roles: %w{web app db}, primary: true
set :stage,    :production
set :branch, 'main'
set :repo_url, "git@github.com:Sadique01/Zomato.gitl"
set :puma_env, 'production'