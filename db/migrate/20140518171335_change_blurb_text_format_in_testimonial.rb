class ChangeBlurbTextFormatInTestimonial < ActiveRecord::Migration
  def change
    change_column :testimonials, :blurb_text, :text
  end
end
