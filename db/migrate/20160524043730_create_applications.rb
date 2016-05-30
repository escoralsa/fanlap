class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.date :date
      t.string :school_name
      t.string :school_year
      t.string :grade
      t.float :score
      t.boolean :other_scholarship
      t.string :from
      t.float :amount
      t.boolean :approved
      t.text :notes
      t.references :student, index: true, foreign_key: true
      t.references :sponsor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
