class PagesController < ApplicationController

	def home

		@page = "home"

		if user_signed_in?

			@last_5_user_tracks = current_user.tracks.last(5)

		end

	end

	def balance

		@page = "balance"

	end


	def profile_page

		@page = "profile"
		
		if params[:username]

			@user = User.find_by_display_name(params[:username])

			unless @user
				redirect_to root_path
			end

			@last_5_user_tracks = @user.tracks.last(5).reverse

		else

			redirect_to root_path
		end	
	end

	def requests


		@page = "requests"

	end
end
