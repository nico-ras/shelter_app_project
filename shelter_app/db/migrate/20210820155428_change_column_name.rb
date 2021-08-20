class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :treatments, :type, :treatment_type
  end
end
