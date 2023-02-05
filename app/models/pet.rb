class Pet < ApplicationRecord
 has_many :bookings
 has_many :users, through: :bookings

 has_one :tracker_device

 has_many :pet_reviews
end
