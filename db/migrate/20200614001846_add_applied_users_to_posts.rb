class AddAppliedUsersToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :applied_users, :string, array:true, default: []
  end
end
