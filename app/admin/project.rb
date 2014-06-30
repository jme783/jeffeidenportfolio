ActiveAdmin.register Project do
  permit_params :name, :description, :summary, :role, :url
  index do
    column :name
    column :description
    column :summary
    column :role
    column :url
    actions
  end
end
