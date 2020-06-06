class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.references :user, foreign_key: true
      t.references :skill, foreign_key: true
      t.integer :score, null:false
      t.timestamps
    end
  end
end
