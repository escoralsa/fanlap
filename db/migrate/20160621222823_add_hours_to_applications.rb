class AddHoursToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :hours, :integer
  end
end
