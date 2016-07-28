class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  	protect_from_forgery with: :exception

  	before_filter :new_track_for_form

	before_action :configure_permitted_parameters, if: :devise_controller?

  	protected


	def new_track_for_form

		@new_track = Track.new

	end

	def configure_permitted_parameters
			
		#devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :display_name, :first_name, :last_name, :password, :image, :password, :password_confirmation])

		devise_parameter_sanitizer.for(:sign_in)        << [:email, :display_name, :first_name, :last_name, :password, :image, :password, :password_confirmation]
   		devise_parameter_sanitizer.for(:sign_up)        << [:email, :display_name, :first_name, :last_name, :password, :image, :password, :password_confirmation]
   		devise_parameter_sanitizer.for(:account_update) << [:email, :display_name, :first_name, :last_name, :password, :image, :password, :password_confirmation]

		# registration_params = [:email, :display_name, :first_name, :last_name, :password, :image, :password, :password_confirmation]

		# if params[:action] == 'update'
		#   devise_parameter_sanitizer.for(:account_update) { 
		#     |u| u.permit(registration_params)
		#   }
		# elsif params[:action] == 'create'
		#   devise_parameter_sanitizer.for(:sign_up) { 
		#     |u| u.permit(registration_params) 

		#   }

		# end

	end



end
