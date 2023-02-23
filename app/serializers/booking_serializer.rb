class BookingSerializer < ActiveModel::Serializer
  attributes :id, :time, :date, :pickup_location, :dropoff_location , :pet_only

  belongs_to :pet
end
