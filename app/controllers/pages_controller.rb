class PagesController < ApplicationController

	def home

		@page = "home"

	end

	def balance



	end


	def profile_page

		@page = "profile"
		
		if params[:username]

			@user = User.find_by_display_name(params[:username])

			unless @user
				redirect_to root_path
			end
		
		else

			redirect_to root_path
		end	
	end

	def requests


		@page = "requests"

	end
end
