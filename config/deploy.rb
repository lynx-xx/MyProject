set :application, "HospitalPages"
set :user, "hospita"
set :domain, "hospitalpages.ie"
set :repository, "#{user}@#{domain}:/home/#{user}/git/#{application}"


# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

ssh_options[:keys] = %w(~/.ssh/authorized_keys)

set :scm, :git
set :scm_username, "hospita"
set :runner, "hospita"
set :use_sudo, false
set :branch, "master"
set :deploy_via, :checkout
set :git_shallow_clone, 1
set :chmod755, "app config db lib public vendor script script/* public/disp*"  
set :deploy_to, "/home/hospita/apps/#{application}"
default_run_options[:pty] = true

role :app, domain
role :web, domain
role :db,  domain, :primary => true

task :after_update_code, :roles => [app] do
   run "ln -nsf #{shared_path}/config/database.yml #{current_path}/config/database.yml"
end
