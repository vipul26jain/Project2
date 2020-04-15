class Channel < ApplicationRecord
	# Associations
	has_many		:channel_shows
	has_many		:shows, through: :channel_shows, :foreign_key => :channel_id
end
