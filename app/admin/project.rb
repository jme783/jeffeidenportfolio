ActiveAdmin.register Project do
  permit_params :name, :description, :summary, :role, :url, :thumbnail, known_technology_ids: []
  index do
    column :name
    column :description
    column :summary
    column :role
    column :url
    column "Known Technologies" do |project|
      project.known_technologies.map{ |p| p.name }.join(', ')
    end 
    actions
  end
  form do |f|
    f.inputs do
      f.input :name
      f.input :description, as: :wysihtml5, commands: :all, blocks: :all
      f.input :summary
      f.input :role
      f.input :url
      f.input :thumbnail
      f.input :known_technologies, as: :check_boxes, collection: KnownTechnology.all
    end
    f.actions
  end
end
