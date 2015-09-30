set :stage, :production

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server '188.166.25.244:2508', user: 'deploy', roles: %w{web app db}

set :deploy_to, "/home/deploy/railsapps/seriousgamemaster/production"

set :rails_env, 'production'
set :branch, 'production'