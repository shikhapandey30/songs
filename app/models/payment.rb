class Payment < ApplicationRecord
	validates_presence_of :status, :user_id, :payment_date, :due_date, :amount
	belongs_to :user
end
