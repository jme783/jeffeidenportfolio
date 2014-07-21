class CreateProjectsKnownTechnologiesJoinTable < ActiveRecord::Migration
  def change
    create_table :projects_known_technologies, id: false do |t|
      t.integer :project_id
      t.integer :known_technology_id
    end
    add_index :projects_known_technologies, [:project_id, :known_technology_id], :name => 'project_technologies_index'
  end
end
