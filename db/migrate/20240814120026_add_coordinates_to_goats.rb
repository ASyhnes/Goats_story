class AddCoordinatesToGoats < ActiveRecord::Migration[7.1]
  def change
    add_column :goats, :latitude, :float
    add_column :goats, :longitude, :float
  end
end
