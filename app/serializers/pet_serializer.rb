class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :species,  :breed, :size, :open_to_breeding, :mental_disorder, :active, :trained, :diet

  has_many :pet_reviews
  has_one :tracker_device
end
