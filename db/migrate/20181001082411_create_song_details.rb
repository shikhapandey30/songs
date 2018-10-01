class CreateSongDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :song_details do |t|
      t.integer :song_id
      t.integer :plays_count
      t.integer :likes_count
      t.integer :reposts_count

      t.timestamps
    end
  end
end
