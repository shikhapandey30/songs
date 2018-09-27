class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.integer :user_id
      t.string :url

      t.timestamps
    end
  end
end
