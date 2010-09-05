set :application, "thenewcru.com"
set :repository,  "git@github.com:newcru/web-app.git"
set :scm,         :git
set :deploy_to,   "/var/www/#{application}"
set :port,        9210
set :use_sudo,    false

server "thenewcru.com", :app, :web, :db, :primary => true

deploy.task :restart, :roles => :app do
  run "touch #{current_path}/tmp/restart.txt"
end
