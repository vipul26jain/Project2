Bundler.require(:commandline)
require "highline/import"
namespace :emailage do
  desc "send reminder"
  task :send_reminder => [:environment] do
    shows = Show.all.uniq
    begin
      shows.each do |sh|
        if sh.user_favs.present?
          @ch = sh.channel_shows.where("Time.parse(end_time).to_s(:db)" == "(Time.now + 1800).to_s")
          if @ch
            sh.user_favs.each do |user|
              Resque.enqueue(UserJob,user: user, show_channel: @ch, action: "trigger_reminder_email")
            end
          end
        end
      end
    rescue => e
      Rails.logger.info(e.message)
    end
  end
end

# User.joins(fav_shows: :user_favourites)
