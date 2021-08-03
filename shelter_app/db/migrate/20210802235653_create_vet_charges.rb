class CreateVetCharges < ActiveRecord::Migration[6.1]
  def change
    create_table :vet_charges do |t|
      t.references :veterinary, null: false, foreign_key: true
      t.references :shelter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
