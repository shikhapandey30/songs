ActiveAdmin.register User do
  remove_filter :reset_password_token
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



  index do
    id_column
    
    column :email
    column :username
    column :first_name
    column :last_name
    column :gender
    column :date_of_birth
    column :address
    column :mob
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table :email, :username, :first_name, :last_name, :gender_display, :date_of_birth, :address, :mob
  end

	form do |f|
    f.inputs "user Details" do
      f.input :email
      f.input :username
      f.input :password      
      f.input :first_name
      f.input :last_name
      f.input :date_of_birth 
      #f.input :gender
      #f.input :gender, sellect: ["Male", "Female"]
      f.input :gender, as: :select, collection: User::GENDER.invert, include_blank: false
 
      f.input :address
      f.input :mob
    end
    f.actions
  end

end
