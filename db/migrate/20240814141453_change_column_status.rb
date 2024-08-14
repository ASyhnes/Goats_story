class ChangeColumnStatus < ActiveRecord::Migration[7.1]
  def change
    change_column :locations, :status, :string, default: "pending"
  end
end
