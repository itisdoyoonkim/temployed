class AddApplyLinkToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :apply_link, :string
  end
end
