class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :time
      t.string :date
      t.string :species
      t.string :pickup_location
      t.string :dropoff_location
      t.boolean :pet_only 
     
    



      t.timestamps
    end
  end
end
