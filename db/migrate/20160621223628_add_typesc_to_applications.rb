class AddTypescToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :typesc, :string
  end
end
