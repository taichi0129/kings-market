class AddDateToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :date, :date
  end
end
