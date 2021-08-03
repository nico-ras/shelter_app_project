class CreateRescuedFroms < ActiveRecord::Migration[6.1]
  def change
    create_table :rescued_froms do |t|
      t.date :date
      t.string :address
      t.text :observations
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
