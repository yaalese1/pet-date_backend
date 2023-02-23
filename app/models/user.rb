class User < ApplicationRecord
    validates :email, uniqueness: true
    # validates :age, presences: true, inclusion:{ only_integer: greater_than 17 }
    # validates :password, length: { in: 4..12 }

    has_secure_password

    has_one_attached :avatar

    has_many :my_bookings, foreign_key: :lender_id ,class_name: 'Booking'
    has_many :borrowers, through: :my_bookings

    has_many :pet_bookings, foreign_key: :borrower_id, class_name: 'Booking'
    has_many :lenders, through: :pet_bookings

    # has_many :bookings
    has_many :pets, foreign_key: :owner_id, class_name: 'Pet'

    has_many :user_reviews


end
