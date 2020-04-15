class HomeController < ApplicationController
  def index
  	@channel_shows = ChannelShow.all
  	@all_shows = Show.all.uniq
  end
end
