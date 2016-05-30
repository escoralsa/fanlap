class AddLevelToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :level, :string
  end
end
