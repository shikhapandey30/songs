class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :artist
      t.string :assigned_to
      t.string :promoted_by
      t.integer :target_plays
      t.integer :status
      t.integer :plays
      t.integer :likes
      t.integer :reposts
      t.integer :comments

      t.timestamps
    end
  end
end
