class PetReview < ApplicationRecord
  belongs_to :pet
  has_many :bookings
end
