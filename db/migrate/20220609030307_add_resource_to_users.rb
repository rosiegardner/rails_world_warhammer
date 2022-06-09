class AddResourceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :resource, :integer
  end
end
