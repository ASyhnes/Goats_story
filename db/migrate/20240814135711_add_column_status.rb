class AddColumnStatus < ActiveRecord::Migration[7.1]
  def change
    add_column :locations, :status, :string
  end
end
