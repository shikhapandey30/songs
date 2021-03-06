class UsersController < ApplicationController
  before_action :authenticate_user!

	
	def profile
		 current_user == @user
		
	end

	def change
		
		@user = current_user
	end
	
	# def edit
		
 #    @user = current_user
 #  end

  def update_password
    # byebug
		
    @user = current_user
    unless @user.valid_password?(params[:user][:current_password])
      @user.errors.add(:base, "Current Password is incorrect.")
      return render "change"
    end
    if @user.update(user_params)
      # Sign in the user by passing validation in case their password changed
      bypass_sign_in(@user)
      redirect_to root_path
      #redirect_to destroy_user_session_path
    else
      render "change"
    end
  end

  private

  def user_params
    # NOTE: Using `strong_parameters` gem
    params.require(:user).permit(:password, :password_confirmation)
  end
end
