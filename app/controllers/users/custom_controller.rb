class Users::CustomController < ApplicationController
	def set_fav
		@set_fav = UserFavourite.find_by(user_id: params[:user_id], show_id: params[:show_id])
			if @set_fav.present?
				@set_fav.delete
			else
				@mark_fav = UserFavourite.new
				@mark_fav.user_id = params[:user_id]
				@mark_fav.show_id = params[:show_id]
				@mark_fav.save!
			end
		@all_shows = Show.all.uniq
		respond_to do |format|
			format.js
		end
	end
end