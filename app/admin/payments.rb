ActiveAdmin.register Payment do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :user_id
 permit_params :user_id, :amount, :payment_date, :due_date, :status

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
	   
	 form.input :user_id, :label => 'User', :as => :select, :collection => User.all.map{|u| ["#{u.first_name}", u.id]}, include_blank:false   
     form.input :amount, :label => 'Amount'
     form.input :payment_date, :label => 'Payment date'
     form.input :due_date, :label => 'Due date'
     form.input :status, as: :select, collection: {'Due': 1, 'Paid': 2} ,include_blank:false

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
