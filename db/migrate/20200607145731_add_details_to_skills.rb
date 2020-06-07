class AddDetailsToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :stock, :integer, null: false
    add_column :skills, :front, :integer, null: false
    add_column :skills, :service, :integer, null: false
    add_column :skills, :order, :integer, null: false
    add_column :skills, :loss, :integer, null: false
    add_column :skills, :pop, :integer, null: false
    add_column :skills, :clean, :integer, null: false
    add_column :skills, :analysis, :integer, null: false
    add_column :skills, :info, :integer, null: false
    add_column :skills, :sale, :integer, null: false
  end
end
