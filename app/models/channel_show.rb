class ChannelShow < ApplicationRecord
	# Associations
	belongs_to				:channel
	belongs_to				:show
end
