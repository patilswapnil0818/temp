ActiveAdmin.register User do

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
  permit_params :name, :email, :password, :password_confirmation, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at, :auth_token
  index do
    selectable_column
    id_column
    column :name
    column :email
    column :sign_in_count
    column :created_at
    actions
  end
  filter :email
  filter :name
  # filter :auth_token
  filter :created_at
  filter :updated_at
  # filter :roles , as: :select, :collection => Role.all.map{ |role| [role.name, role.id]}, include_blank: false

  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      # f.input :auth_token
      # f.input :roles, as: :select, multiple: false, collection: Role.all
    end
    f.actions
  end

# controller do
#   def create
#     @user = User.new(user_params)
#     add_roles(@user)
#     create!
#   end

#   def update
#     add_roles(resource)
#     update!(user_params)
#   end

#   private
#     def add_roles(resource)
#       resource.roles = []
#       params[:user][:role_ids].each {
#         |r| resource.add_role(Role.find(r)) unless r.blank?
#       }
#     end
#     def user_params
#       params.require(:user).permit(:email, :password, :password_confirmation, :role_ids)
#     end
#   end
end
