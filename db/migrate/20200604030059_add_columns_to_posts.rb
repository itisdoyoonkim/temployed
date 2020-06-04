class AddColumnsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :job_duration, :string
    add_column :posts, :start_date, :date
    add_column :posts, :job_title, :string
    add_column :posts, :location, :string
    add_column :posts, :company_name, :string
    add_column :posts, :job_description, :text
    add_column :posts, :requirements, :text
  end
end
