class Show < ApplicationRecord
	# Associations
	has_many			:channel_shows
	has_many			:channels, through: :channel_shows, :foreign_key => :show_id
	has_many			:user_favourites
	has_many			:user_favs, through: :user_favourites, :source => :user
end
