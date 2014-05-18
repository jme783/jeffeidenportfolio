class AddPortraitsToTestimonials < ActiveRecord::Migration
  def change
    add_column :testimonials, :portrait, :string
  end
end
