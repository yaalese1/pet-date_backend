class User < ApplicationRecord
    has_one_attached :avatar

    has_many :my_bookings, foreign_key: :lender_id ,class_name: 'Booking'
    has_many :borrowers, through: :my_bookings

    has_many :pet_bookings, foreign_key: :borrower_id, class_name: 'Booking'
    has_many :lenders, through: :pet_bookings

    # has_many :bookings
    has_many :pets, foreign_key: :owner_id, class_name: 'Pet'

    has_many :user_reviews


end
