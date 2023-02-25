class Pet < ApplicationRecord
    validates :name, presence: true,  uniqueness: true
    validates :species,  presence: true,

 belongs_to :owner, class_name: 'User'

 

 has_many :pet_reviews, dependent: :destroy

 has_many :bookings, dependent: :destroy
 
 has_one :tracker_device, dependent: :destroy

#  validates :tracker_device, required: true


end
