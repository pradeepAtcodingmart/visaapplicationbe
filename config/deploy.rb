# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "visaapplicationbe"
set :repo_url, "git@github.com:pradeepAtcodingmart/visaapplicationbe.git"

set :use_sudo, true
# set :scm, :git
set :keep_releases, 5
set :format, :pretty
set :log_level, :debug
set :pty, true
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
set :stages, %w(production staging production)
set :default_stage, "production"

# Force rake through bundle exec
SSHKit.config.command_map[:rake] = "bundle exec rake"

# Force rails through bundle exec
SSHKit.config.command_map[:rails] = "bundle exec rails"

set :migration_role, 'app' # Defaults to 'db'
set :assets_roles, [:app] # Defaults to [:web]

# Shared directories over different deployments
# set :linked_files, %w(config/database.yml)

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      within release_path do
        execute "sudo rm -rf tmp"
        execute "sudo mkdir tmp"
        execute "sudo chmod -R 777 #{current_path}/tmp"
        execute "sudo chmod -R 777 #{shared_path}/tmp"
        execute "sudo service apache2 restart"
      end
    end
  end

  after :finishing, 'deploy:restart'
end