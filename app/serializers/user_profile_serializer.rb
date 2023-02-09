class UserProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :seeking_relationship

  has_many :pets
end
