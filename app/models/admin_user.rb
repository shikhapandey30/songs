class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  # def admin?
  #   role.admin == "admin"
  # end
  # def user?
  # 	role.user == "user"
  # end
end
