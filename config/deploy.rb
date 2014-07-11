# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'mdnapp'

set :repo_url, 'ssh://puppet.thecerveras.com/var/git/mdn2.git'
#set :repo_url, 'ssh://quark.thecerveras.com/git/mdn2.git'
#set :repo_url, 'ssh://quark.thecerveras.com:/Library/Server/Xcode/Repositories/git/mdn2.git'
#set :repo_url, 'https://adm1n:redeemed1@quark.thecerveras.com:/Library/Server/Xcode/Repositories/git/mdn2.git'
#set :git_https_username, 'adm1n'
#set :git_https_password, 'redeemed1'
set :ssh_options, { :forward_agent => true }


# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/var/mdnapp'
set :keep_releases, 5
# Default value for :scm is :git
set :scm, :git

# Set the rails environment to production
set :rails_env, 'production'

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
set :pty, true

#From old deploy.rb file, not sure if they work in new format
set :ssh_options, { :forward_agent => true }
set :user, "adm1n"
set :group, "adm1n"
set :use_sudo, false
#set :shared_children, shared_children + %w{public/uploads}


# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

# capistrano-rvm
# set :rvm_type, :user                     # Defaults to: :auto
#set :rvm_ruby_version, 'ruby-2.0.0-p353@mdn_app' # Defaults to: 'default'


namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here
      # run "cp #{shared_path}/config/database.yml #{latest_release}/config/"
      # execute :ln "-sf #{current_path}/public/ #{deploy_to}"
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  # desc 'Recreating symlinks for uploads'
  # task :symlink_uploads do
  #   sh "rm -rf #{release_path}/public/system/uploads} && ln -nfs #{shared_path}/system/uploads  #{release_path}/public/system/uploads"
  # end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      #within release_path do
        #execute :rake, 'cache:clear'
      #end
    end
  end

end

