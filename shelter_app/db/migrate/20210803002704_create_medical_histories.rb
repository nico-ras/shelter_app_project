class CreateMedicalHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_histories do |t|
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
