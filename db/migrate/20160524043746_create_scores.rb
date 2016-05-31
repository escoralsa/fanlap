class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :month
      t.integer :year
      t.float :score
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
