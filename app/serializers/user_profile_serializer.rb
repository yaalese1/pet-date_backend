class UserProfileSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer
  include Rails.application.routes.url_helpers
  
  attributes :id, :first_name, :last_name, :email, :age, :seeking_relationship, :about_me, :city, :state, :zip_code, :pronouns,:pets, :avatar, :avatar_url


  has_many :pets

  has_many :user_reviews

  has_many :my_bookings 
  
  has_many :pet_bookings
  




end
