set :stage, :staging
server '54.175.234.166', user: 'ubuntu', roles: %w{web app db}
set :linked_files, %w{.env .env.staging} 
