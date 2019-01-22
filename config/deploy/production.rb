set :branch, 'master'
set :stage, :production
# Setting RAILS_ENV environment variable on server
set :rails_env, :production
set :use_sudo, true

set :normalize_asset_timestamps, %{public/images public/javascripts public/stylesheets}

role :app, %w{root@139.59.63.110}