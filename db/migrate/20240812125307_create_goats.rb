class CreateGoats < ActiveRecord::Migration[7.1]
  def change
    create_table :goats do |t|
      t.string :name
      t.string :race
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
