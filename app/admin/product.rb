ActiveAdmin.register Product do

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
  permit_params :name, :price, :category, :color
  index do
    selectable_column
    id_column
    column :name
    column :price
    column :category
    column :color
    actions
  end
  # filter :email
  # filter :created_at
  # filter :updated_at

  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :price
      f.input :category
      f.input :color
      # f.input :auth_token
      # f.input :roles, as: :select, multiple: false, collection: Role.all
    end
    f.actions
  end
end