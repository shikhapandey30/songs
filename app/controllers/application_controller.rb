class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # protected
	 #  def configure_permitted_parameters
	 #    devise_parameter_sanitizer.permit(:sign_up) do |user|
	 #    	user.permit(:email, :first_name, :last_name, :gender, :date_of_birth, :address, :mob, :password,:password_confirmation)
	 #    end
	 #  end
end
