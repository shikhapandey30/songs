class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.decimal :amount
      t.date :payment_date
      t.date :due_date
      t.integer :status

      t.timestamps
    end
  end
end
