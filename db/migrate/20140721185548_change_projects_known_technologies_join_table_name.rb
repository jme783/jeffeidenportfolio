class ChangeProjectsKnownTechnologiesJoinTableName < ActiveRecord::Migration
  def change
    rename_table :projects_known_technologies, :known_technologies_projects
  end
end
