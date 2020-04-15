require 'resque/tasks'
require 'resque/scheduler/tasks'
    require 'resque'

task 'resque:setup' => :environment do
  	ENV['QUEUE'] = '*'
end	

