class RemoveSkillFromSkills < ActiveRecord::Migration[5.2]
  def change
    remove_column :skills, :skill, :string
  end
end
