ActiveAdmin.register Skill do
  permit_params :name, :image
  index do
    column :name
    column :image
    actions
  end
end
