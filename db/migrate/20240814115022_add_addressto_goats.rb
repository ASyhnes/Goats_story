class AddAddresstoGoats < ActiveRecord::Migration[7.1]
  def change
    add_column :goats, :address, :string
  end
end
