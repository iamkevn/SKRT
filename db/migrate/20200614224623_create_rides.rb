class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.string :location
      t.string :destination
      t.integer :passenger_id
      t.integer :driver_id

      t.timestamps
    end
  end
end
