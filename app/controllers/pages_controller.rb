class PagesController < ApplicationController

	def profile_page
		
		if params[:username]

			@user = User.find_by_display_name(params[:username])

			unless @user
				redirect_to root_path
			end
		
		else

			redirect_to root_path
		end	
	end
end
