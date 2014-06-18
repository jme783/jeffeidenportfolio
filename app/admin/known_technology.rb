ActiveAdmin.register KnownTechnology do
  permit_params :name, :skill_id
  index do
    selectable_column
    column :name
    column :skill
    actions
  end
end
