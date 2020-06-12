class AddEndDateToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :end_date, :string
  end
end
