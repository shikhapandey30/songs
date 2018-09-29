class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:username]
  # def admin?
  #   role.admin == "admin"
  # end
  # def user?
  # 	role.user == "user"
  # end
  validates_presence_of :username, :gender
  validates_uniqueness_of :username
  has_many :songs

  def email_required?
    false
  end

end
