class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :start_time
      t.string :end_time
      t.string :start_date
      t.string :end_date
      t.string :pickup_location
      t.string :dropoff_location
      t.boolean :pet_only 
      t.integer :borrower_id
      t.integer :lender_id
      t.integer :pet_id
     
    



      t.timestamps
    end
  end
end
