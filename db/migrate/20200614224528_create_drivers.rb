class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :vehicle
      t.string :language
      t.integer :rating
      t.integer :phone_number

      t.timestamps
    end
  end
end
