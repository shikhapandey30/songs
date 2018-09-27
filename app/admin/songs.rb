ActiveAdmin.register Song do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :user_id, :url

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	form do |form|
	   form.inputs do
	   
	   form.input :user_id, :label => 'User', :as => :select, :collection => User.all.map{|u| ["#{u.first_name}", u.id]}   
     form.input :url, :label => 'url'

	   #<%= form.submit %>
	    
	   

	  end
	   form.actions
	 end
	# form do |f|
	#     f.inputs "user Details" do
	#       f.input :email
	#     end
	#     f.actions
	# end
end
