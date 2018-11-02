class AddCampaignIdToSupportLists < ActiveRecord::Migration[5.1]
  def change
  	add_column :support_lists, :campaign_id, :integer
  end
end
