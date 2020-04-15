class UserFavourite < ApplicationRecord
	# Associations
	belongs_to			:user
	belongs_to			:show
end
