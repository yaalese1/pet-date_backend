class UserProfileSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer

  attributes :id, :first_name, :age, :seeking_relationship, :about_me, :city, :state, :zip_code, :pronouns, :avatar_url
  
  has_many :pets

  has_many :user_reviews

  has_many :my_bookings
  
  has_many :pet_bookings



end
