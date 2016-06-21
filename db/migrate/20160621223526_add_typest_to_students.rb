class AddTypestToStudents < ActiveRecord::Migration
  def change
    add_column :students, :typest, :string
  end
end
