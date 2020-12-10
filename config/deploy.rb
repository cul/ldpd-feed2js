lock '3.14.1'

set :department, 'ldpd'
set :application, 'feed2js'

set :repo_name, "#{fetch(:department)}-#{fetch(:application)}"
set :repo_url,  "git@github.com:cul/#{fetch(:repo_name)}.git"

set :remote_user, "#{fetch(:department)}serv"

set :deploy_name, "#{fetch(:application)}_#{fetch(:stage)}"
set :deploy_to, "/opt/www/#{fetch(:department)}/#{fetch(:deploy_name)}"

# Default branch is :master
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('html/magpie/cache')
set :linked_dirs, fetch(:linked_dirs, []).push('html/magpie/cache_utf8')

