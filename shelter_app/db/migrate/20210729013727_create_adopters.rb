class CreateAdopters < ActiveRecord::Migration[6.1]
  def change
    create_table :adopters do |t|
      t.string :name, null: false
      t.string :dni
      t.string :address, null: false
      t.string :phone
      t.string :social_net
      t.text :observations

      t.timestamps
    end
  end
end
