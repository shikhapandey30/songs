json.extract! payment, :id, :user_id, :amount, :payment_date, :due_date, :status, :created_at, :updated_at
json.url payment_url(payment, format: :json)
