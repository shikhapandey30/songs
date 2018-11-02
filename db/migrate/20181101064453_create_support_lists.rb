class CreateSupportLists < ActiveRecord::Migration[5.1]
  def change
    create_table :support_lists do |t|
      t.string :account_name
      t.integer :of_followers
      t.date :date_supported
      t.integer :period_of_repost
      t.string :contact_name

      t.timestamps
    end
  end
end
