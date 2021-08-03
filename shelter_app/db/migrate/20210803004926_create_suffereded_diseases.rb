class CreateSufferededDiseases < ActiveRecord::Migration[6.1]
  def change
    create_table :suffereded_diseases do |t|
      t.date :started_at
      t.boolean :discharged, default: false
      t.references :disease, null: false, foreign_key: true
      t.references :medical_history, null: false, foreign_key: true
      t.references :veterinary, null: true, foreign_key: true

      t.timestamps
    end
  end
end
