class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :st_number
      t.string :last_name
      t.string :slast_name
      t.string :names
      t.date :birthdate
      t.string :gender
      t.text :address
      t.string :map_link
      t.string :phone
      t.string :father_name
      t.string :father_work
      t.string :mother_name
      t.string :mother_work
      t.integer :sibling
      t.string :colonia
      t.string :city
      t.string :zip_code
      t.string :foto
      t.string :shoe_size
      t.string :tshirt_size
      t.string :email
      t.string :profession
      t.string :notes

      t.timestamps null: false
    end
  end
end
