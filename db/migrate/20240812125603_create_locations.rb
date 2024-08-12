class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.text :details
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :goat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
