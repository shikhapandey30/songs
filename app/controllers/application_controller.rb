class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
	helper_method :resource_name, :resource, :devise_mapping, :resource_class
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  protected
	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up) do |user|
	    	user.permit(:email, :first_name, :last_name, :gender, :date_of_birth, :address, :mob, :password,:password_confirmation)
	    end
	    devise_parameter_sanitizer.permit(:account_update) do |user_params|
				user_params.permit({ roles: [] }, :email, :password,:current_password, :password_confirmation, :first_name, :last_name, :gender, :date_of_birth, :address, :mob)
		end
	 end
end
