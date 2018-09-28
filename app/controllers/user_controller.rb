class UserController < ApplicationController
	def profile
		 current_user == @user
		
	end
end
