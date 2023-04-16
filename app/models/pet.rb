class Pet < ApplicationRecord
    # validates :name, presence: true,  uniqueness: true
    # validates :species,  presence: true

has_one_attached :image

 belongs_to :owner, class_name: 'User'

 

 has_many :pet_reviews, dependent: :destroy

 has_many :bookings, dependent: :destroy
 
 has_one :tracker_device, dependent: :destroy

def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
    end
#  validates :tracker_device, required: true


end
