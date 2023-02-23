class UserProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :age, :seeking_relationship
  has_many :pets
  has_many :user_reviews
  has_many :my_bookings
  has_many :pet_bookings

end
