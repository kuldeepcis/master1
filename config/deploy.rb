# config valid only for current version of Capistrano
#require 'capistrano/ext/multistage'
lock '3.4.0'
 



set :application, "testcap"
# Source code
set :ee_system, "system"
set :scm, :git
set :repository, "git@github.com:kuldeepcis/master1.git"
#set :user, "kuldeepcis"
set :scm_username, "kuldeepcis"
set :scm_password, "kuldeepJ@14"

set :user, "dlrmedia"
set :branch, "master"
set :repository_cache, "git_cache"
#set :deploy_via, :remote_cache
set :deploy_via, :copy
set :ssh_options, { :forward_agent => true }

set :stages, ["staging", "production"]
set :default_stage, "staging"

server "http://www.werksters.nl.wereldreizigers.nl/", roles: [:app, :web, :db], :primary => true
set :deploy_to, "/home/dlrmedia/sites/werksters/public_html/testcap"
# Deployment servers
#role :app, "169.255.255.255"
#role :web, "169.255.255.255"
#role :db,  "169.255.255.255", :primary => true

#set :deploy_to, "/home/dlrmedia/sites/werksters/public_html/testcap"



# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

#namespace :deploy do

#  after :restart, :clear_cache do
#    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
#    end
#  end

#end
