env :GEM_PATH, ENV['GEM_PATH']
# env :PATH, ENV['PATH']
require File.expand_path(File.dirname(__FILE__) + "/environment")
set :output, '/var/www/freemarket_sample_53b/shared/log/crontab.log'
job_type :runner, "export PATH=\"$HOME/.rbenv/bin:$PATH\"; eval \"$(rbenv init -)\"; cd :path && RAILS_ENV=:environment bundle exec rails runner :task ：output"

# every 1.day at: '11:00 am' do
#   command "ActiveStorage::Blob.unattached.find_each(&:purge_later)"
# end
