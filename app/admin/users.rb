ActiveAdmin.register User do
	permit_params :email, :username, :first_name, :last_name, :date_of_birth, :password, :mob, :gender, :address
	
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	form do |f|
    f.inputs "user Details" do
      f.input :email
      f.input :username
      f.input :password      
      f.input :first_name
      f.input :last_name
      f.input :date_of_birth 
      f.input :gender 
      f.input :address
      f.input :mob
    end
    f.actions
  end

end
