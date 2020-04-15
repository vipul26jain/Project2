set :output, {:error => 'log/cron.error.log', :standard => 'log/cron.standard.log'}
set :environment, ENV["RAILS_ENV"] || "development"
set :chronic_options, :hours24 => true

every 10.minute do
  rake "emailage:send_reminder"
end