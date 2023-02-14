class PetReviewSerializer < ActiveModel::Serializer
  attributes :id, :comments, :star_rating
end
