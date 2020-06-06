class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :institution
      t.string :location
      t.date :from
      t.date :to
      t.string :certificate
      t.boolean :current

      t.timestamps
    end
  end
end
