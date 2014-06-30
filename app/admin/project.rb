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
  form do |f|
    f.inputs do
      f.input :name
      f.input :description, as: :wysihtml5, commands: :all, blocks: :all
      f.input :summary
      f.input :role
      f.input :url
    end
    f.actions
  end
end
