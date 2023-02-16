class UserProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :age, :seeking_relationship
  has_many :pets
 
end
