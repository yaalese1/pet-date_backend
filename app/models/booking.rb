class Booking < ApplicationRecord
    validates :start_date, presence: true

    belongs_to :lender, class_name: 'User'
    belongs_to :borrower, class_name: 'User'
    belongs_to :pet
end
