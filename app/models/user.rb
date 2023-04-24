class User < ApplicationRecord
    
  # validates :email, uniqueness: true
  # validates_presence_of :first_name, :age,:city, :state, :zip_code,:avatar,:avatar_url

  # validates :avatar_url, allow_blank: true, format: {
  #   with: %r{\.gif|jpeg|png}i,
  #   message: 'gif, jpeg, or png image file only.'
  # }
  # validates :about_me, length: { maximum: 250,
  # too_long: "%{count} characters is the maximum allowed" }
  # validates :age, numericality: { only_integer: true }
  # validates :age,  numericality: { in: 18..65, message: " must be 18 years or older to sign up" }
  # validates :password, length: { in: 4..12 }

  has_secure_password

  has_one_attached :avatar

  has_many :my_bookings, foreign_key: :lender_id ,class_name: 'Booking'
  has_many :borrowers, through: :my_bookings ,   dependent: :destroy

  has_many :pet_bookings, foreign_key: :borrower_id, class_name: 'Booking'
  has_many :lenders, through: :pet_bookings,   dependent: :destroy

  # has_many :bookings
  has_many :pets, foreign_key: :owner_id, class_name: 'Pet', dependent: :destroy

  has_many :user_reviews,  dependent: :destroy

  def avatar_url
      Rails.application.routes.url_helpers.url_for(avatar) if avatar.attached?
    end

end
