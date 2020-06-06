class AddUsersReferenceToExperience < ActiveRecord::Migration[6.0]
  def change
    add_reference :experiences, :user, null: false, foreign_key: true
  end
end
