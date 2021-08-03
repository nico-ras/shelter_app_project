class CreateTreatments < ActiveRecord::Migration[6.1]
  def change
    create_table :treatments do |t|
      t.string :type, null: false
      t.text :observation
      t.integer :cost
      t.references :suffereded_disease, null: false, foreign_key: true

      t.timestamps
    end
  end
end
