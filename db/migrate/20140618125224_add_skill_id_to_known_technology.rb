class AddSkillIdToKnownTechnology < ActiveRecord::Migration
  def change
    add_column :known_technologies, :skill_id, :integer
  end
end
