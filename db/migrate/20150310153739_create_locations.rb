class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :user, index: true
      t.string :zip
      t.string :city
      t.string :state

      t.timestamps null: false
    end
    add_foreign_key :locations, :users
  end
end
