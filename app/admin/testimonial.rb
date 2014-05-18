ActiveAdmin.register Testimonial do
  permit_params :author_name, :author_company, :author_position, :blurb_text, :portrait
  index do
    column :author_name
    column :author_company
    column :blurb_text
    actions
  end
end
