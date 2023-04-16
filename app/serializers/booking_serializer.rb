class BookingSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :start_time, :end_time, :lender_id, :borrower_id, :pickup_location, :dropoff_location , :pet_only, :pet, :lender, :borrower

  belongs_to :pet
  belongs_to :lender
  belongs_to :borrower
  
end
