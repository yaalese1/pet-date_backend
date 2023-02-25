class TrackerDevice < ApplicationRecord
    belongs_to :pet

    validates :pet, uniqueness: true, presence: true
end
