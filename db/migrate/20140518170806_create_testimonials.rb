class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :author_name
      t.string :author_company
      t.string :author_position
      t.string :blurb_text

      t.timestamps
    end
  end
end
