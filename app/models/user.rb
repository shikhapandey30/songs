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

  GENDER = {1 => "Male", 2 => "Female"}

  validates_presence_of :username
  validates_uniqueness_of :username
  has_many :songs
  has_many :payments
  #has_many :campaigns
  validates :mob, :presence => {:message => 'number only 10 digit'},
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 10 }

  def email_required?
    false
  end

  def gender_display
    User::GENDER[gender]
  end

end
