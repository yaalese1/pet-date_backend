class PetSerializer < ActiveModel::Serializer
  attributes :name, :age, :species,  :breed, :size, :open_to_breeding, :mental_disorder, :active, :trained, :diet
end
