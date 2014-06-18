class CreateKnownTechnologies < ActiveRecord::Migration
  def change
    create_table :known_technologies do |t|
      t.string :name

      t.timestamps
    end
  end
end
