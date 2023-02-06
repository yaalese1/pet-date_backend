class Pet < ApplicationRecord
 belongs_to :owner, class_name: 'User'

 has_one :tracker_device

 has_many :pet_reviews

 has_many :bookings
end
