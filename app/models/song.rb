class Song < ApplicationRecord
	belongs_to :user
	has_one :song_detail
	has_many :support_list
end
