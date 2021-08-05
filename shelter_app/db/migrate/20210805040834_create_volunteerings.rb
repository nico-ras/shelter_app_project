class CreateVolunteerings < ActiveRecord::Migration[6.1]
  def change
    create_table :volunteerings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :shelter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
