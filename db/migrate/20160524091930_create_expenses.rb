class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :month
      t.integer :year
      t.float :amount
      t.references :student, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
