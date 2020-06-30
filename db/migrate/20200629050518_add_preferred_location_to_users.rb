class AddPreferredLocationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :preferred_locations, :string
  end
end
