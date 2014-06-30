class AddUrLtoProjects < ActiveRecord::Migration
  def change
    add_column :projects, :url, :string
    add_column :projects, :role, :string
  end
end
