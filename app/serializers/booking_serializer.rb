
class BookingSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :start_date, :end_date , :lender_id, :borrower_id, :pickup_location, :dropoff_location , :pet_only, :pet, :lender, :borrower, :avatar_for_lender, :avatar_for_borrower

  belongs_to :pet
  belongs_to :lender
  belongs_to :borrower

  
  
end
