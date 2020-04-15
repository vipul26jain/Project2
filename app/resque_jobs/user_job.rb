require 'resque/server'

module UserJob
	@queue = :user_job_queue

	def self.perform(data)
		user = data['user']
		show_channel = data['show_channel']

			# For User
		if data['action'] == 'trigger_reminder_email'
			UserMailer.reminder_email_to_users(user,show_channel).deliver_now
		end
		

	end

end