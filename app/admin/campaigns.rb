ActiveAdmin.register Campaign do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :artist, :assigned_to, :promoted_by, :target_plays, :status, :plays, :likes, :reposts, :comments
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
# 
	index do
    id_column
    
    column :artist
    column :assigned_to do |m|
    	campaign = User.find(m.assigned_to).username
	  end
    column :promoted_by
    column :target_plays
    column :status
    column :plays
    column :likes
    column :reposts
    column :comments
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table :artist, :assigned_to, :promoted_by, :target_plays, :status, :plays, :likes, :reposts, :comments
   #  attributes_table :account_name, :of_followers, :date_supported, :period_of_repost, :contact_name
  	# byebug
  	# @supports_list = SupportList.all 
   #    @supports_list.each do |support|
   #    @supports_list = SupportList.find_or_initialize_by(campaign_id: campaign.id)
   #    @supports_list.account_name 
   #    @support_list.try(:of_followers) 
   #    @supports_list.date_supported 
   #    @supports_list.period_of_repost 
   #    @supports_list.contact_name 
   #    @supports_list.save
  		
   #  end 

   render 'support_lists', { campaign: resource }
     


  end
  




	form do |form|
		   form.inputs do
		 form.input :artist, :label => 'artist'  
		 form.input :assigned_to, :label => 'assigned_to', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}, include_blank:false   
	     form.input :promoted_by, :label => 'promoted_by'
	     form.input :target_plays, :label => 'target_plays'
	     #form.input :status, :label => 'status'
	     form.input :status, as: :select, collection: {'Scheduled': 1, 'In Progress': 2, 'Completed': 3} ,include_blank:false
	     form.input :plays, :label => 'plays'
	     form.input :likes, :label => 'likes'
	     form.input :reposts, :label => 'reposts'
	     form.input :comments, :label => 'comments'

	    
		   #<%= form.submit %>
		    
		   

		  end
		   form.actions
		 end

end
