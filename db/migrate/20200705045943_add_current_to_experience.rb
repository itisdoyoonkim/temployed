class AddCurrentToExperience < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :current, :boolean
  end
end
