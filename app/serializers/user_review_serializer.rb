class UserReviewSerializer < ActiveModel::Serializer
  attributes :id, :comments, :star_rating
end
