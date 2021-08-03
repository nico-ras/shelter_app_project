class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.integer :age
      t.integer :sex
      t.string :color
      t.date :entry_at, null: false
      t.integer :condition
      t.integer :personality     
      t.integer :chip
      t.string :hosted_in
      t.text :observations
      t.references :shelter, null: false, foreign_key: true
      t.references :rescued_from, null: false, foreign_key: true
      t.references :adopter, null: true, foreign_key: true

      t.timestamps
    end
  end
end
