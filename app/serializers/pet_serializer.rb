class PetSerializer < ActiveModel::Serializer

  attributes :id, :name, :age, :species,  :breed, :size, :open_to_breeding, :mental_disorder,:active, :trained, :alteration, :diet, :state, :city, :zip_code,:owner_id,:image_url,:image

  has_many :pet_reviews
  has_one :tracker_device
  belongs_to :owner
  



end

