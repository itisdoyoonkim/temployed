class AddHireableToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :hireable, :boolean
  end
end
