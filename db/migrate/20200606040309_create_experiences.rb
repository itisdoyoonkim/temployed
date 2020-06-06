class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :organization
      t.string :location
      t.string :position
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
