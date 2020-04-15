class UserMailer < ApplicationMailer
  helper :application
  default template_path: 'mailer'
  default from: "<no-reply@demo2.com>" 

  # def trigger_email_on_beneficiary_creation(beneficiary_details)
  #   @beneficiary = beneficiary_details
  #   @user = User.find beneficiary_details.user_id
  #   mail(to: @user.email, subject: 'Beneficiary Successfully Added', bcc: Settings.OPERATIONS_EMAIL)
  # end

  def reminder_email_to_users(user,show_channel)
  	user = user
    channel_name = show_channel.channel.name
    show_name = show_channel.show.name
    start_time = show_channel.start_time
    end_time = show_channel.end_time
    mail(to: user.email, subject: 'Reminder Email')
  end
end